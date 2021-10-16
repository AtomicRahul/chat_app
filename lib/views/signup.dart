import 'package:chat_app/views/signin.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController emailTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();
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
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    TextField(
                        controller: userNameTextEditingController,
                        style: simpleTextFieldStyle(),
                        decoration: textFieldInputDecoration("Username")),
                    SizedBox(height: 30),
                    TextField(
                        controller: emailTextEditingController,
                        style: simpleTextFieldStyle(),
                        decoration: textFieldInputDecoration("Email")),
                    SizedBox(height: 30),
                    TextField(
                        controller: passwordTextEditingController,
                        style: simpleTextFieldStyle(),
                        decoration: textFieldInputDecoration("Password")),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "Forget Password?",
                          style: simpleTextFieldStyle(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Text(
                        "Create Account",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Divider(
                            color: Colors.black,
                          ),
                        )),
                        Text(
                          "OR",
                          style: TextStyle(color: Colors.black),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(right: 20, left: 20),
                          child: Divider(
                            color: Colors.black,
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: Text(
                        "Sign Up With Google",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already Have an Account?  ",
                          style: simpleTextFieldStyle(),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          child: Text(
                            "Sign in",
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
