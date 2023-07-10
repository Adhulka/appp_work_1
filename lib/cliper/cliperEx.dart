import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: clipEx(),
  ));
}

class clipEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("cliperEx"),
        ),
        body: ListView(
          children: [
            ClipRect(
              child: Container(
                child: Align(
                    alignment: Alignment.center,
                    widthFactor: .4,
                    heightFactor: .2,
                    child: Image.network(
                        "https://images.unsplash.com/photo-1444491741275-3747c53c99b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmlrZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60")),
              ),
            ),
            ClipRect(
              child: Container(
                child: Align(
                    alignment: Alignment.center,
                    heightFactor: .6,
                    widthFactor: .4,
                    child: Image.network(
                        "https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGJpa2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60")),
              ),
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(100),
            //   child: Image.network(
            //       "https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGJpa2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"),
            // ),
            // ClipOval(
            //   child: Image.network(
            //       "https://images.unsplash.com/photo-1444491741275-3747c53c99b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8YmlrZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60"),
            // ),
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Image.network(
                  "https://images.unsplash.com/photo-1602148740250-0a4750e232e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGJpa2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60"),
            ),
          ],
        ));
  }
}
