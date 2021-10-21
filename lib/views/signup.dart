import 'package:chat_app/services/methods.dart';
import 'package:chat_app/views/homescreen.dart';
import 'package:chat_app/views/signin.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:page_transition/page_transition.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (isLoading) {
      return SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      );
    } else {
      return SafeArea(
          child: Scaffold(
              body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.15),
                      TextField(
                          controller: _name,
                          style: simpleTextFieldStyle(),
                          decoration: textFieldInputDecoration("Username")),
                      SizedBox(height: 30),
                      TextField(
                          controller: _email,
                          style: simpleTextFieldStyle(),
                          decoration: textFieldInputDecoration("Email")),
                      SizedBox(height: 30),
                      TextField(
                          controller: _password,
                          style: simpleTextFieldStyle(),
                          decoration: textFieldInputDecoration("Password")),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_name.text.isNotEmpty &&
                              _email.text.isNotEmpty &&
                              _password.text.isNotEmpty) {
                            setState(() {
                              isLoading = true;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            });

                            createAccount(
                                    _name.text, _email.text, _password.text)
                                .then((user) {
                              if (user != null) {
                                setState(() {
                                  isLoading = false;
                                });
                                print("Login Successfull");
                              } else {
                                print("Login Failed");
                              }
                            });
                          } else {
                            print("Plese Enter Fields");
                          }
                        },
                        child: Container(
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
                      ),
                      SizedBox(
                        height: 20,
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
                        height: 20,
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
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 40),
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
                                  PageTransition(
                                      duration: Duration(milliseconds: 200),
                                      reverseDuration:
                                          Duration(milliseconds: 2 + 00),
                                      child: SignIn(),
                                      type: PageTransitionType.rightToLeft));
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
            ]),
      )));
    }
  }
}
