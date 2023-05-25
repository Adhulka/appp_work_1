import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CRW(),
  ));
}

var picture = [
  "assets/image/igate.jpeg",
  "assets/image/fin.jpeg",
  "assets/image/london.jpeg",
  "assets/image/van.jpeg",
  "assets/image/newy.jpeg",
];

class CRW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Cities Around World")),
        backgroundColor: Color.fromARGB(255, 246, 102, 13),
      ),
      body: ListView(
        children: [
          SizedBox(
            width: 70,
            height: 135,
            child: Card(
              color: Color.fromARGB(179, 224, 145, 9),
              child: ListTile(
                title: Text("Delhi"),
                subtitle: Text("India"),
                leading: Image.asset("assets/image/igate.jpeg"),
              ),
            ),
          ),
          SizedBox(
            width: 70,
            height: 135,
            child: Card(
              color: Color.fromARGB(179, 224, 145, 9),
              child: ListTile(
                title: Text("Finland"),
                subtitle: Text("Europe"),
                leading: Image.asset("assets/image/fin.jpeg"),
              ),
            ),
          ),
          SizedBox(
            width: 70,
            height: 135,
            child: Card(
              color: Color.fromARGB(179, 224, 145, 9),
              child: ListTile(
                title: Text("London"),
                subtitle: Text("UK"),
                leading: Image.asset("assets/image/london.jpeg"),
              ),
            ),
          ),
          SizedBox(
            width: 70,
            height: 135,
            child: Card(
              color: Color.fromARGB(179, 224, 145, 9),
              child: ListTile(
                title: Text("vancouver"),
                subtitle: Text("Canada"),
                leading: Image.asset("assets/image/van.jpeg"),
              ),
            ),
          ),
          SizedBox(
            width: 70,
            height: 135,
            child: Card(
              color: Color.fromARGB(179, 224, 145, 9),
              child: ListTile(
                title: Text("NewYear"),
                subtitle: Text("NYK"),
                leading: Image.asset("assets/image/newy.jpeg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
