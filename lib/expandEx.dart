import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: expandEx()));
}

class expandEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.amberAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("hello"),
            Icon(Icons.account_box_sharp),
            Expanded(
              child: Image(
                image: AssetImage('assets/images/van.jpeg'),
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
