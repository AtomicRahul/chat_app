import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text(
        "Chat App",
        style: TextStyle(
          color: Colors.black87,
        ),
      ),
      backgroundColor: Colors.white,
    ),
  );
}

InputDecoration textFieldInputDecoration(
  String hintText,
) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.black26),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)));
}

TextStyle simpleTextFieldStyle() {
  return TextStyle(color: Colors.black, fontSize: 16);
}

TextStyle mediumTextFieldStyle() {
  return TextStyle(color: Colors.blue, fontSize: 17);
}
