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
      appBar: PreferredSize(
        child: appBarMain(context),
        preferredSize: const Size.fromHeight(80),
      ),
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
                      child: Text("Sign Up"),
                    ),
                    SizedBox(height: 25),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              colors: [Colors.black54, Colors.black54])),
                      child: Text(
                        "Sign Up With Google",
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
