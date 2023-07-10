import 'package:appp_work_1/storage/shared_preferance/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Loginpage(),
  ));
}

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();
  late SharedPreferences preferences;
  late bool newUser;
  @override
  void initState() {
    check_user_alreadyLogin();
    super.initState();
  }

  void check_user_alreadyLogin() async {
    preferences = await SharedPreferences.getInstance();
    newUser = preferences.getBool("firstlogin") ?? true;
    if (newUser == false) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => profilelogin()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("loginpage"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "loginpage",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                controller: uname_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "username"),
              ),
            ),
            Text(
              "loginpage",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                controller: pass_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "password"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  String username = uname_controller.text;
                  String password = pass_controller.text;
                  if (username != '' && password != '') {
                    //saving data to shared preferance
                    preferences.setString("username", username);
                    preferences.setBool("firstlogin", false);

                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => profilelogin()));
                  }
                },
                child: Text("login"))
          ],
        ),
      ),
    );
  }
}
