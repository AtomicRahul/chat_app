import 'package:chat_app/views/signup.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    TextField(
                        style: simpleTextFieldStyle(),
                        decoration: textFieldInputDecoration("Email")),
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
                      height: 60,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 35),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Text(
                        "Sign In With Google",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?  ",
                          style: simpleTextFieldStyle(),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Text(
                            "Register Now",
                            style: mediumTextFieldStyle(),
                          ),
                        ),
                      ],
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
