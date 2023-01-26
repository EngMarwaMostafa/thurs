import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nib/models/products_model.dart';
import 'package:nib/models/wislist_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WishlistController extends GetxController {
  var favoritesMap = {}.obs;

 /*addRemoveToFavorite()async{
   if(favList.contains(selectedProduct['id'])){
     favList.remove(selectedProduct['id']);
     isFav.value=false;
   }else{
     favList.add(selectedProduct['id']);
     isFav.value=true;
   }
 }

  checkFavorite() {
    if (favList.contains(selectedProduct['id'])) {
      isFav.value = true;
    } else {
      isFav.value = false;
    }
  }*/

 void addToWish() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final dio = Dio();
    try {
      final response = await dio.post(
          "http://beautiheath.com/sub/eshop/api/buyers/addto/wishlists",
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

  void removeFromWish(WishlistModel wishlistModel) {
    if (favoritesMap.containsKey(wishlistModel) && favoritesMap[wishlistModel] == 1) {
     favoritesMap.removeWhere((key, value) => key == wishlistModel);
    } else {
      favoritesMap[wishlistModel] -= 1;
    }
  }
}