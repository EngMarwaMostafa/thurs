/*
import 'dart:convert';

import 'package:nib/models/cart_model.dart';
import 'package:nib/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartRepo{
  late final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});

  List<String> cart=[];

  void addToCartList(List<CartModel> cartList){
    var time=DateTime.now().toString();
    cart=[];

    cartList.forEach((element) {
      element.date!=time;
      return cart.add(jsonEncode(element));
    });
    
    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
  }

  List<CartModel> getCartList(){
    List<String> carts=[];
    if(sharedPreferences.containsKey(AppConstants.CART_LIST)){
      carts=sharedPreferences.getStringList(AppConstants.CART_LIST)!;
      print('inside getCartList' + carts.toString());
    }
    List<CartModel> cartList=[];
    carts.forEach((element) => cartList.add(CartModel.fromJson(jsonDecode(element))));
    return cartList;
  }
  
  void removeCart(){
    cart=[];
    sharedPreferences.remove(AppConstants.CART_LIST);
  }
  
  void removeCartSharedPrefrences(){
    sharedPreferences.remove(AppConstants.CART_LIST);
  }
}

 */