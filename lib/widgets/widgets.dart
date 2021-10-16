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
      hintStyle: TextStyle(color: Colors.black12),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue, width: 1.2)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey)));
}

TextStyle simpleTextFieldStyle() {
  return TextStyle(color: Colors.black, fontSize: 16);
}

TextStyle mediumTextFieldStyle() {
  return TextStyle(color: Colors.blue, fontSize: 17);
}
