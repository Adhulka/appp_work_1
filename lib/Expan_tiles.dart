import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: expan(),
  ));
}

class expan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expan"),
      ),
      body: ExpansionTile(
        title: Text("Colors"),
        subtitle: Text("Expand to view colors"),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pink,
            ),
            title: Text("pink"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
            ),
            title: Text("orange"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text("Green"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black,
            ),
            title: Text("black"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            title: Text("red"),
          ),
        ],
      ),
    );
  }
}
