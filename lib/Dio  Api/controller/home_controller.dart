import 'package:appp_work_1/Dio%20%20Api/model/post_model.dart';
import 'package:appp_work_1/Dio%20%20Api/service/dio_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class HomeController extends GetxController {
  //rx dart means observable data
  RxList<postModel> post = RxList();
  RxBool isLoading = true.obs;
  RxBool isListViewScrolltoDown =
      false.obs; // to check the list shows the last values(scrolldown)
  RxBool isInnetConnected = true.obs;
  var url = "https://jsonplaceholder.typicode.com/posts";

  var itemController = ItemScrollController();

  isInnet() async {
    isInnetConnected.value = await InternetConnectionChecker().hasConnection;
  }

  getpost() async {
    isInnetConnected();
    isLoading.value = true;
    var response = await DioService().getMethod(url);
    if (response.stausCode == 200) {
      response.data.forEach((Element) {
        post.add(postModel.fromJson(Element));
      });
      isLoading.value = false;
    }
  }

  ScrolltoDown() {
    itemController.scrollTo(
        index: 0, duration: Duration(seconds: 3), curve: Curves.easeInExpo);
    isListViewScrolltoDown.value = true;
  }

  ScrollUp() {
    itemController.scrollTo(
        index: 0, duration: Duration(seconds: 3), curve: Curves.easeInCubic);
    isListViewScrolltoDown.value = false;
  }

  @override
  void onInit() {
    getpost();
    isInnetConnected();
    super.onInit();
  }
}
