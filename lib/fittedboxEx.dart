import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: fitttedboox(),
  ));
}

class fitttedboox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FittedBox(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            child: Card(
              color: const Color.fromRGBO(255, 171, 64, 1),
              child: Row(
                children: [
                  Container(
                    // height: 200,
                    // width: 200,
                    child: Text(
                      'fitted box example',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                      height: 200,
                      // height: MediaQuery.of(context).size.height * .2,
                      child: Image.asset("assets/images/van.jpeg"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
