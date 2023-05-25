import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: Abc(),
  ));
}

class Abc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Lottie.asset("assets/animation/108282-sunrise.json",
            fit: BoxFit.fill),
      ),
    );
  }
}
