import 'package:flutter/material.dart';

class Chatrooms extends StatelessWidget {
  const Chatrooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Name"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(),
            Container(
              height: size.height * 0.10,
              width: size.width * 0.90,
              alignment: Alignment.center,
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
