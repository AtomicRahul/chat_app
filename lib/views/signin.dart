import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: appBarMain(context),
        preferredSize: const Size.fromHeight(100),
      ),
      body: Column(
        children: [
          Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    TextField(
                        style: simpleTextFieldStyle(),
                        decoration: textFieldInputDecoration("email")),
                    SizedBox(height: 30),
                    TextField(
                        style: simpleTextFieldStyle(),
                        decoration: textFieldInputDecoration("Password")),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Text(
                          "Forget Password?",
                          style: simpleTextFieldStyle(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              colors: [Colors.white, Colors.white])),
                      child: Text("Sign In"),
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              colors: [Colors.black54, Colors.black54])),
                      child: Text(
                        "Sign In With Google",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: simpleTextFieldStyle(),
                        ),
                        Text(
                          "Register Now",
                          style: mediumTextFieldStyle(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
