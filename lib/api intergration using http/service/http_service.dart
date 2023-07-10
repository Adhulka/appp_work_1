import 'package:appp_work_1/api%20intergration%20using%20http/model/productmodel.dart';
import 'package:http/http.dart' as http;

class httpservice {
  static Future<List<Cartproduct>> fetchproduct() async {
    var response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      var data = response.body;
      return cartproductFromJson(data);
    } else {
      throw Exception();
    }
  }
}
