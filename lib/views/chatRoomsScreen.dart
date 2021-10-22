import 'package:flutter/material.dart';

class ChatRoom extends StatelessWidget {
  final Map<String, dynamic> userMap;
  final String chatRoomId;

  ChatRoom({required this.chatRoomId, required this.userMap});

  final TextEditingController _message = TextEditingController();

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
