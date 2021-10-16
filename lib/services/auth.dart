import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat_app/models/user.dart' as u;

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  u.User? _userFromFirebaseUser(User? user) {
    if (user != null) {
      return u.User(userId: user.uid);
    } else {
      return null;
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
    } catch (e) {}
  }
}

Future signUpWithEmailPassword(String email, String password) async {
  try {} catch (e) {}
}
