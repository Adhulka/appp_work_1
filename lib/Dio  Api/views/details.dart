import 'package:appp_work_1/Dio%20%20Api/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  int index;
  DetailsPage({required this.index});
  HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(controller.post[index].id.toString()),
            Text(controller.post[index].title),
            Text(controller.post[index].body)
          ],
        ),
      ),
    );
  }
}
