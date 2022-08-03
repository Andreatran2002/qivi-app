import 'package:qivi_app/src/model/entity/user.dart';

class UserRepository {
  Future<bool> signUp(
      {required String fullName,
      required String address,
      required String phoneNumber,
      required String password}) async {
    // await _firebaseAuth.createUserWithEmailAndPassword(
    //     email: email, password: password);
    // var currentUser = _firebaseAuth.currentUser;

    //update info
    // await currentUser!.updateDisplayName(displayName);
    return false;
  }

  Future signOut() async {
    // return Future.wait([
    //   _firebaseAuth.signOut(),
    //   _googleSignIn.signOut(),
    // ]);
  }

  Future<bool> isSignedIn() async {
    // final currentUser = _firebaseAuth.currentUser;
    return true;
  }

  Future<String> getUser() async {
    return "Vy nè ";
  }

  Future<bool> signIn(String phoneNumber, String password) async {
    try {
      return true;
    } catch (e) {
      return false;
    }
  }
}
