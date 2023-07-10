import 'package:appp_work_1/passing%20data%20between%20screens/dummydata.dart';
import 'package:flutter/material.dart';

class productDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context)?.settings.arguments;
    final productfromlist = products.firstWhere(
      (element) => element["id"] == productid,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("my wishList"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(productfromlist["image2"]),
            Text(productfromlist["name"]),
            Text("${productfromlist["price"]}"),
            Text(productfromlist["description"]),
          ],
        ),
      ),
    );
  }
}
