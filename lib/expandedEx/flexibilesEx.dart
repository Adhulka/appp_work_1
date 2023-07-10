import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: flexiEx(),
  ));
}

class flexiEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              SizedBox(
                  width: 20,
                  child: Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Container(
                        height: 100,
                        width: 120,
                        color: Colors.red,
                      ),
                    ),
                  )),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Container(
                  height: 200,
                  width: 170,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              height: 380,
              width: 200,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  height: 189,
                  width: 200,
                  color: Colors.orange,
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  height: 200,
                  width: 160,
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
