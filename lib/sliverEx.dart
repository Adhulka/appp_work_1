import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sliverEx1(),
  ));
}

class sliverEx1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            title: Text("sliver app bar"),
            bottom: AppBar(
              backgroundColor: Colors.green,
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "search here",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt))),
              ),
            ),
          ),

//           SliverList(
//               delegate: SliverChildBuilderDelegate((context, index) => Padding(
//                     padding: EdgeInsets.all(20),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                         color: Colors.greenAccent,
//                       ),
//                       height: 100,
//                       child: Center(
//                         child: Text(
//                           "inside Sliver text$index",
//                           style: TextStyle(fontSize: 20),
//                         ),
//                       ),
//                     ),
//                   )))
        ],
      ),
    );
  }
}
