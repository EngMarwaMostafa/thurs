import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nib/models/products_model.dart';
import 'package:nib/models/wislist_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WishlistController extends GetxController {

  addToWish({int? productId}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final dio = Dio();
    try {
      final response = await dio.post(
          "http://beautiheath.com/sub/eshop/api/buyers/addto/wishlists",
          data: {"productId": productId},
          options: Options(headers: {
            "Authorization": "Bearer ${sharedPreferences.getString("token")}"
          }));
      print(response.statusCode);
      if (response.statusCode == 200) {
        print(response.data);
        print(response.statusCode);
      }
    } catch (e) {}
  }

}