import 'package:appp_work_1/Dio%20%20Api/controller/home_controller.dart';
import 'package:appp_work_1/Dio%20%20Api/utils/colors.dart';
import 'package:appp_work_1/Dio%20%20Api/utils/constants.dart';
import 'package:appp_work_1/Dio%20%20Api/views/details.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      floatingActionButton: Obx(
          () => controller.isInnetConnected.value ? _buildFab() : Container()),
      body: Obx(() => SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: controller.isInnetConnected.value
                ? (controller.isLoading.value ? loadingAnim() : loaddata())
                : nointernet(context),
          )),
    );
  }

  Center loadingAnim() {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset('assets/animation/a.json'),
      ),
    );
  }

  RefreshIndicator loaddata() {
    return RefreshIndicator(
      color: MyColors.bgColor,
      onRefresh: () {
        return controller.getpost();
      },
      child: ScrollablePositionedList.builder(
          itemScrollController: controller.itemController,
          physics: BouncingScrollPhysics(), // animation
          itemCount: controller.post.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.to(DetailsPage(index: index));
              },
              child: Card(
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(controller.post[index].id.toString()),
                    ),
                  ),
                  title: Text(
                    controller.post[index].title,
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  ),
                  subtitle: Text(controller.post[index].body),
                ),
              ),
            );
          }),
    );
  }

  nointernet(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Lottie.asset('assets/animation/b.json'),
          ),
          MaterialButton(onPressed: () async {
            if (await InternetConnectionChecker().hasConnection == true) {
              controller.getpost();
            } else {
              showCustomSnackBar(context);
            }
          })
        ],
      ),
    );
  }

  void tryAgain(BuildContext context) async {
    {
      if (await InternetConnectionChecker().hasConnection == true) {
        controller.getpost();
      } else {
        showCustomSnackBar(context);
      }
    }
  }

  FloatingActionButton _buildFab() {
    return FloatingActionButton(
      onPressed: () {
        controller.isListViewScrolltoDown.value
            ? controller.ScrollUp()
            : controller.ScrolltoDown();
      },
      child: FaIcon(controller.isListViewScrolltoDown.value
          ? FontAwesomeIcons.arrowUp
          : FontAwesomeIcons.arrowDown),
    );
  }
}
