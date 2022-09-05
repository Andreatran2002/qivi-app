import 'dart:convert';
import 'dart:math';

import 'package:graphql/client.dart';
import 'package:qivi_app/src/client.dart';
import 'package:qivi_app/src/model/entity/entity.dart';
import 'package:qivi_app/src/model/entity/user.dart';
import 'package:qivi_app/src/model/local/pref.dart';

class UserRepository {
  Pref localRef = LocalPref();
  Pref memoryRef = MemoryPref();
  Future<String> signUp(
      {required String firstName,
      required String lastName,
      required String phoneNumber,
      required String password}) async {
    try {
      final GraphQLClient _client = await getClient();
      final QueryOptions options = QueryOptions(
          document: gql(
            r'''
    mutation($firstName : String! , $lastName: String! , $password: String!, $phoneNumber : String!){
  createUser(firstName: $firstName, lastName: $lastName, password: $password, phoneNumber: $phoneNumber){
    message
  }
}
      ''',
          ),
          variables: {
            "firstName": firstName,
            "lastName": lastName,
            "password": password,
            "phoneNumber": phoneNumber
          });

      final QueryResult result = await _client.query(options);

      if (result.hasException) {
        return 'undefined-error';
      }
      return result.data!['createUser']['message'];
    } catch (e) {
      return 'undefined-error';
    }
  }

  Future signOut() async {
    // return Future.wait([
    //   _firebaseAuth.signOut(),
    //   _googleSignIn.signOut(),
    // ]);
  }

  Future<bool> isSignedIn() async {
    try {
      String? result = await localRef.getString("quynhvyuser");
      return result != null;
    } catch (e) {
      return false;
    }
  }

  Future<User> getUser() async {
    Map<String, dynamic> userString =
        jsonDecode(await localRef.getString("quynhvyuser"));
    return User.fromJson(userString);
  }

  Future<String> signIn(String phoneNumber, String password) async {
    try {
      final GraphQLClient _client = await getClient();

      final QueryOptions options = QueryOptions(
          document: gql(
            r'''
    mutation($phoneNumber:String!, $password : String!){
  authenticationByPhoneNumber(phoneNumber: $phoneNumber, password: $password) {
    message
    data {
      id
      userName
      phoneNumber
      firstName
      lastName
    }
  }
}
      ''',
          ),
          variables: {"password": password, "phoneNumber": phoneNumber});

      final QueryResult result = await _client.query(options);

      if (result.hasException) {
        return 'undefined-error';
      }

      if (result.data!['authenticationByPhoneNumber']['message'] == "success") {
        await localRef.saveString(
            "quynhvyuser",
            jsonEncode(User.fromJson(
                result.data!['authenticationByPhoneNumber']['data'])));
      }

      return result.data!['authenticationByPhoneNumber']['message'];
    } catch (e) {
      return 'undefined-error';
    }
  }

  Future<AppResponse<List<UserOrderInfo>>> getUserOderInfo() async {
    try {
      User userInfo = await getUser();

      final GraphQLClient _client = await getClient();

      final QueryOptions options = QueryOptions(
          document: gql(
            r'''
   query($id : String!){
  userOrderInfos: recipientInfoByUserIdAsync(id: $id){
    data {
      id
      userId
    phoneNumber
    recipient
    address
    }
    message
  }
}

      ''',
          ),
          variables: {"id": userInfo.id});

      final QueryResult result = await _client.query(options);

      if (result.hasException) {
        return AppResponse<List<UserOrderInfo>>(message: 'undefined-error');
      }
      List<UserOrderInfo> userOrderInfos = [];
      print(result.data!['userOrderInfos']['data']);
      if (result.data!['userOrderInfos']['message'] == "success") {
        result.data!['userOrderInfos']['data'].forEach((a) {
          userOrderInfos.add(UserOrderInfo.fromJson(a));
        });
      }

      return AppResponse<List<UserOrderInfo>>(
          data: userOrderInfos,
          message: result.data!['userOrderInfos']['message']);
    } catch (e) {
      return AppResponse<List<UserOrderInfo>>(message: 'undefined-error');
    }
  }

  // Future<bool> createUserOrderInfo() {}
}
