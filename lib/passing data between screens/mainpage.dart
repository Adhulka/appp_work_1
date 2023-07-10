import 'package:appp_work_1/passing%20data%20between%20screens/dummydata.dart';
import 'package:appp_work_1/passing%20data%20between%20screens/produDetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: productscree(),
    routes: {
      "second": (context) => productDetails(),
    },
  ));
}

class productscree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shoes comapany"),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: products
            .map((product) => ListTile(
                leading: SizedBox(
                  height: 100,
                  child: Image.network(
                    product["image1"],
                  ),
                ),
                subtitle: Text("\$${product["price"]}"),
                title: Text(product["name"]),
                onTap: () {
                  gotonext(context, product["id"]);
                }))
            .toList(),
      ),
    );
  }

  void gotonext(BuildContext context, productid) {
    Navigator.of(context).pushNamed("second", arguments: productid);
  }
}
