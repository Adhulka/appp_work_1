import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: login(),
  ));
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
            ),
            Text(
              "Welcome Back!use your credentials",
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email ID",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    prefixIcon: Icon(Icons.email)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    prefixIcon: Icon(Icons.visibility_off)),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 79, 155, 82),
                  minimumSize: Size(350, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Text("Do you have an account?"),
                  TextButton(onPressed: () {}, child: Text(" sign up")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
