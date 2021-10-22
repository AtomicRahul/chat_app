import 'package:chat_app/services/methods.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, dynamic>? userMap;

  bool isLoading = false;
  final TextEditingController _search = TextEditingController();

  void onSearch() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    setState(() {
      isLoading = true;
    });

    await _firestore
        .collection('users')
        .where("email", isEqualTo: _search.text)
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
        isLoading = false;
      });
    });
    print(userMap);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ChatBee"),
        actions: [
          IconButton(icon: Icon(Icons.logout), onPressed: () => logOut(context))
        ],
      ),
      body: isLoading
          ? Center(
              child: Container(),
            )
          : Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Container(
                  height: size.height * 0.1,
                  width: size.width * 0.85,
                  alignment: Alignment.center,
                  child: Container(
                    child: TextField(
                      controller: _search,
                      decoration: InputDecoration(
                          hintText: "Search",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  width: size.width * 0.85,
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: onSearch,
                    child: Text("Search"),
                  ),
                ),
                userMap != null
                    ? ListTile(
                        onTap: () {},
                        leading: Icon(Icons.person),
                        title: Text(userMap?['name']),
                        subtitle: Text(userMap?['email']),
                        trailing: Icon(Icons.chat_bubble),
                      )
                    : Container()
              ],
            ),
    );
  }
}
