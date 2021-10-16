import 'package:flutter/material.dart';
import 'package:chat_app/views/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xffFF8D44),
          scaffoldBackgroundColor: Colors.white,
          brightness: Brightness.light,
          textSelectionTheme:
              TextSelectionThemeData(cursorColor: Colors.black)),
      home: SignUp(),
    );
  }
}
