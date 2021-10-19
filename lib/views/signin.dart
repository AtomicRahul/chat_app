import 'package:chat_app/views/signup.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/services/methods.dart';
import 'package:chat_app/views/homescreen.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (isLoading) {
      return Center(
        child: Container(
          height: size.height / 20,
          width: size.height / 20,
          child: CircularProgressIndicator(),
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
                            controller: _email,
                            style: simpleTextFieldStyle(),
                            decoration: textFieldInputDecoration("Email")),
                        SizedBox(height: 30),
                        TextField(
                            controller: _password,
                            style: simpleTextFieldStyle(),
                            decoration: textFieldInputDecoration("Password")),
                        SizedBox(
                          height: 30,
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
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (_email.text.isNotEmpty &&
                                _password.text.isNotEmpty) {
                              setState(() {
                                isLoading = true;
                              });

                              logIn(_email.text, _password.text).then((user) {
                                if (user != null) {
                                  setState(() {
                                    isLoading = false;
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            duration:
                                                Duration(milliseconds: 200),
                                            reverseDuration:
                                                Duration(milliseconds: 200),
                                            child: HomeScreen(),
                                            type: PageTransitionType
                                                .rightToLeft));
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
                              "Sign In",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
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
                              padding:
                                  const EdgeInsets.only(right: 20, left: 20),
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
                              padding:
                                  const EdgeInsets.only(right: 20, left: 20),
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
                              "Sign In With Google",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )),
                        SizedBox(
                          height: 18,
                        ),
                        SizedBox(height: 40),
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
                                    PageTransition(
                                        duration: Duration(milliseconds: 200),
                                        reverseDuration:
                                            Duration(milliseconds: 200),
                                        child: SignUp(),
                                        type: PageTransitionType.leftToRight));
                              },
                              child: Text(
                                "Create Account",
                                style: mediumTextFieldStyle(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
