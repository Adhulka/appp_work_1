import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: insta()));
}

class insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(137, 56, 55, 55),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 350,
          ),
          Image.asset(
            "assets/image/images.png",
            width: 60,
          ),
          Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Text(
                "from",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 109, 108, 108)),
              ),
            ],
          ),
          Text(
            'Meta',
            style: TextStyle(fontSize: 30, color: Colors.pink[800]),
          )
        ],
      )),
    );
  }
}
