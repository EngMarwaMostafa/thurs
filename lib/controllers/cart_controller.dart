import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nib/models/cart_model.dart';
import 'package:nib/routes/router_helper.dart';
import 'package:nib/utils/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';


class CartController extends GetxController {
  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;


  addToCart({int? productId, int? quantity}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final dio = Dio();
    try {
      final response = await dio.post(
          "http://beautiheath.com/sub/eshop/api/buyers/addtocart",
          data: {"quantity": quantity, "productId": productId},
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

  removeFromCart({int? productId, int? quantity}) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final dio = Dio();
    try {
      final response = await dio.post(
          "http://beautiheath.com/sub/eshop/api/buyers/addtocart",
          data: {"quantity": quantity, "productId": productId},
          options: Options(headers: {
            "Authorization": "Bearer ${sharedPreferences.getString("token")}"
          }));
      print(response.statusCode);
      if (response.statusCode == 200) {
        print('marwa');
      }
    } catch (e) {}
  }

  int getQuantity(int? productId, int? quantity){
    var quantity=0;
    if(_items.containsKey(productId)){
      _items.forEach((key, value) {
        if(key==productId){
          quantity=value.quantity! as int;
        }
      });
    }
    return quantity;
  }

  int get totalItems{
    var totalQuantity=0;
    _items.forEach((key, value) {
      totalQuantity += value.quantity! as int;
    });
    return totalQuantity;
  }

  List<CartModel> get getItems {
    return _items.entries.map((e) {
      return e.value;
    }).toList();
  }

  int get totalAmount{
    var total=0;
    _items.forEach((key, value) {
      total += (value.quantity!*value.price!) as int;
    });
    return total;
  }

}