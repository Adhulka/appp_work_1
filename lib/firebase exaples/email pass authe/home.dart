import 'package:appp_work_1/firebase%20exaples/email%20pass%20authe/FireHelper.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class HomeFire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              FireHelper().signOut().then((result) => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => LoginFire())));
            },
            child: Text("Sign-Out")),
      ),
    );
  }
}
