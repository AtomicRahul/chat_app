import 'package:firebase_auth/firebase_auth.dart';

Future<User> createAccount(String name, String email, String password) async {
  FirebaseAuth _auth = FirebaseAuth.instance;

  try {
    User? user = (await _auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;

    if (user != null) {
      print("Login Successfull");
      return user;
    } else {
      print("Account Creation Failed");
      return user;
    }
  } catch (e) {
    print(e);
    return null;
  }
}
