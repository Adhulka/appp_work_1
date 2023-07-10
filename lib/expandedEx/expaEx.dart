import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: expanEXX(),
  ));
}

class expanEXX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 29,
            width: 50,
            color: const Color.fromARGB(255, 6, 63, 110),
          ),
          Expanded(
            child: Container(
              height: 29,
              width: 50,
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: Container(
              height: 29,
              width: 50,
              color: Colors.red,
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  height: 30,
                  width: 99,
                  color: Colors.red,
                ),
                Container(
                  height: 99,
                  width: 99,
                  color: Colors.greenAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
