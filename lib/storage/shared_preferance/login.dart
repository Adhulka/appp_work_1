import 'package:appp_work_1/storage/shared_preferance/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profilelogin extends StatefulWidget {
  @override
  State<profilelogin> createState() => _profileloginState();
}

class _profileloginState extends State<profilelogin> {
  late SharedPreferences logindata;
  late String username;
  @override
  void initState() {
    userdata();
    super.initState();
  }

  void userdata() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my profiles"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "welcome $username",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  logindata.setBool("firstlogin", true);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Loginpage()));
                },
                child: Text("login"))
          ],
        ),
      ),
    );
  }
}
