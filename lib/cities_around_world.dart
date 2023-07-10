import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listui(),
  ));
}

class listui extends StatefulWidget {
  const listui({Key? key}) : super(key: key);

  @override
  State<listui> createState() => _listuiState();
}

class _listuiState extends State<listui> {
  var subn = [
    "India",
    "Europe",
    "UK",
    "Canada",
    "US",
  ];

  var ssubn = [
    "population :32.9 mill",
    "population :5.54 mill",
    "population :8.8 mill",
    "population :2.6 mill",
    "population :3.2 mill",
  ];

  var names = [
    "Delhi",
    "Finland",
    "London",
    "Vancouver",
    "NewYork",
  ];

  var img = [
    "assets/image/igate.jpeg",
    "assets/image/fin.jpeg",
    "assets/image/london.jpeg",
    "assets/image/newy.jpeg",
    "assets/image/van.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange[900],
          title: Center(
            child: const Text(
              "Cities Around World",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return SizedBox(
            height: 149,
            width: 50,
            child: Card(
                color: Colors.orange[400],
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 150),
                    child: Image.asset(
                      img[index],
                      height: 200,
                      width: 180,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 200,
                    child: Text(names[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                  Positioned(
                      top: 48,
                      left: 200,
                      child: Text(
                        subn[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Positioned(top: 65, left: 200, child: Text(ssubn[index]))
                ])),
          );
        },
        itemCount: names.length,
      ),
    );
  }
}
