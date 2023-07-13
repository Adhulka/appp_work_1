// import 'package:appp_work_1/api%20intergration%20using%20http/contoller/productcontroller.dart';
// import 'package:appp_work_1/api%20intergration%20using%20http/contoller/productcontroller.dart';
// import 'package:appp_work_1/api%20intergration%20using%20http/contoller/productcontroller.dart';
// import 'package:appp_work_1/api%20intergration%20using%20http/screen/widget/prooduct.dart';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomeApi extends StatelessWidget {
//   productController productController = Get.put(productController());

//   @override
//   Widget Build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Product page"),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(15),
//             child: Row(
//               children: [
//                 Expanded(
//                     child: Text(
//                   "shop me!",
//                   style: TextStyle(fontSize: 20),
//                 )),
//                 Expanded(child: Obx(() {
//                   if (productController) {
//                     return Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   } else {
//                     return GridView.builder(
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                             crossAxisCount: 2,
//                             crossAxisSpacing: 15,
//                             mainAxisSpacing: 15),
//                         itemBuilder: (context, index) {
//                           return producttile();
//                         });
//                   }
//                 }))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
