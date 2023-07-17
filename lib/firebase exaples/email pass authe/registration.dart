import 'package:appp_work_1/firebase%20exaples/email%20pass%20authe/FireHelper.dart';
import 'package:appp_work_1/firebase%20exaples/email%20pass%20authe/login.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class RegistrationFire extends StatefulWidget {
  const RegistrationFire({super.key});

  @override
  State<RegistrationFire> createState() => _RegistrationFireState();
}

class _RegistrationFireState extends State<RegistrationFire> {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: email,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: pass,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String mail = email.text.trim();
                String pwd = pass.text.trim();

                FireHelper().signUp(email: mail, password: pwd).then((result) {
                  if (result == null) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginFire()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: Text('Register'))
        ],
      ),
    );
  }
}
