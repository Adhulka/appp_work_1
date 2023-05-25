import 'package:appp_work_1/signup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'login_1.dart';

void main() {
  runApp(MaterialApp(
    home: project1(),
  ));
}

class project1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello There!",
            style: TextStyle(fontSize: 46),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "WELCOME TO THE VIRTUAL WORLD",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Image.asset(
            "assets/image/seat3",
            width: 400,
            height: 250,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => login(),
              ));
            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 79, 155, 82),
                minimumSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => signup(),
              ));
            },
            child: Text("sign up"),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 79, 155, 82),
                minimumSize: Size(300, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          )
        ],
      ),
    ));
  }
}
