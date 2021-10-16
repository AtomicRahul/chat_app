import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        "Start Chatting Bitch",
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
      backgroundColor: Colors.white,
    ),
  );
}

InputDecoration textFieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)));
}

TextStyle simpleTextFieldStyle() {
  return TextStyle(color: Colors.black, fontSize: 16);
}

TextStyle mediumTextFieldStyle() {
  return TextStyle(
      color: Colors.black, fontSize: 17, decoration: TextDecoration.underline);
}
