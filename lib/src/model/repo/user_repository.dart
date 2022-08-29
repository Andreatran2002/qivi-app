import 'dart:convert';
import 'dart:math';

import 'package:graphql/client.dart';
import 'package:qivi_app/src/client.dart';
import 'package:qivi_app/src/model/entity/user.dart';
import 'package:qivi_app/src/model/local/pref.dart';

class UserRepository {
  Pref localRef = LocalPref();
  Pref memoryRef = MemoryPref();
  Future<String> signUp(
      {required String fullName,
      required String address,
      required String phoneNumber,
      required String password}) async {
    try {
      final GraphQLClient _client = await getClient();

      final QueryOptions options = QueryOptions(
          document: gql(
            r'''
    mutation($fullName : String! , $address: String! , $password: String!, $phoneNumber : String!){
  createUser (fullName: $fullName, address: $address, password:$password, phoneNumber: $phoneNumber) {
    message
  }
}
      ''',
          ),
          variables: {
            "fullName": fullName,
            "address": address,
            "password": password,
            "phoneNumber": phoneNumber
          });

      final QueryResult result = await _client.query(options);

      if (result.hasException) {
        print(result.exception.toString());
      }
      return result.data!['createUser']['message'];
    } catch (e) {
      print(e);
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
    return await localRef.getString("quynhvyuser") != null;
  }

  Future<User> getUser() async {
    Map<String, dynamic> userString =
        jsonDecode(await localRef.getString("quynhvyuser"));
    print("GetUser : $userString");
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
      fullName
      address
    }
  }
}
      ''',
          ),
          variables: {"password": password, "phoneNumber": phoneNumber});

      final QueryResult result = await _client.query(options);

      if (result.hasException) {
        print(result.exception.toString());
      }

      if (result.data!['authenticationByPhoneNumber']['message'] == "success") {
        print("success");
        print(result.data!['authenticationByPhoneNumber']['data']['id']);
        print("data ne" +
            User.fromJson(result.data!['authenticationByPhoneNumber']['data'])
                .toString());
        await localRef.saveString(
            "quynhvyuser",
            jsonEncode(User.fromJson(
                result.data!['authenticationByPhoneNumber']['data'])));
      }

      return result.data!['authenticationByPhoneNumber']['message'];
    } catch (e) {
      print(e);
      return 'undefined-error';
    }
  }
}
