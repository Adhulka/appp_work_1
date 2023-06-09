import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: exitbox(),
  ));
}

class exitbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showalert() async {
      return await showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: Text("exit?!!!"),
                content: Text(" Do u really want to exit "),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: Text('yes')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text("no")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text("cancel"))
                ],
              )));
    }

    return WillPopScope(
      onWillPop: showalert,
      child: Scaffold(
        appBar: AppBar(
          title: Text("exit from the app"),
        ),
        body: const Center(
          child: Text("press back button to exit"),
        ),
      ),
    );
  }
}
