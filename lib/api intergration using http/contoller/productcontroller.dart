import 'package:appp_work_1/api%20intergration%20using%20http/service/http_service.dart';
import 'package:get/get.dart';

class productController extends GetxController {
  //.obs is for monitoring the changes in list and loding state
  var isLoding = true.obs;
  var productlist = [].obs;
  @override
  void onInit() {
    fetchproduct();
    super.onInit();
  }

  void fetchproduct() async {
    try {
      isLoding(true);
      var products = await httpservice.fetchproduct();
      if (products != null) {
        productlist.value = products;
      }
    } catch (e) {
      print(e);
    }
    {
      isLoding(false);
    }
  }
}
