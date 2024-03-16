import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title: Text("앱임", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),

        body: Container(
          child: Row(
            children: [
              Text("안녕하세요")
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          height: 50,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
