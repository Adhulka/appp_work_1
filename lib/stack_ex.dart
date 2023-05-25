import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: stackingEx(),
  ));
}

class stackingEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Stack(
      children: [
        Container(
          color: Colors.green,
          height: 600,
          width: 500,
        ),
        Container(
          color: Colors.blue,
          height: 400,
          width: 300,
        ),
        Container(
          color: Colors.pink,
          height: 200,
          width: 100,
        ),
        Container(
          color: Colors.orange,
          height: 50,
          width: 25,
        ),
      ],
    )));
    //);
  }
}
