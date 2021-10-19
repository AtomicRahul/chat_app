import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Center(
            child: Container(
              height: size.height * 0.08,
              width: size.width * 0.85,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.black38),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          ElevatedButton(
            onPressed: () {},
            child: Text("Search"),
          )
        ],
      ),
    );
  }
}
