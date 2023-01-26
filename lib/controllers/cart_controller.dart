import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nib/models/cart_model.dart';
import 'package:nib/routes/router_helper.dart';
import 'package:nib/utils/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';


class CartController extends GetxController {
  var cartsMap = {}.obs;

  void addProductToCart(CartModel cartModel) {
    if (cartsMap.containsKey(cartModel)) {
      cartsMap[cartModel] += 1;
    } else {
      cartsMap[cartModel] = 1;
    }
  }

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

  void removeProductsFromCart(CartModel cartModel) {
    if (cartsMap.containsKey(cartModel) && cartsMap[cartModel] == 1) {
      cartsMap.removeWhere((key, value) => key == cartModel);
    } else {
      cartsMap[cartModel] -= 1;
    }
  }

  void removeOneProduct(CartModel cartModel) {
    cartsMap.removeWhere((key, value) => key == cartModel);
  }

  void clearAllProducts() {
    Get.defaultDialog(
      title: "Clean Products",
      titleStyle: const TextStyle(
        fontSize: 18,
        color: AppColors.mainColor,
        fontWeight: FontWeight.bold,
      ),
      middleText: 'Are you sure you need clear products',
      middleTextStyle: const TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.grey,
      radius: 10,
      textCancel: " No ",
      cancelTextColor: Colors.white,
      textConfirm: " YES ",
      confirmTextColor: Colors.white,
      onCancel: () {
        Get.toNamed(RouteHelper.getCartScreen());
      },
      onConfirm: () {
        cartsMap.clear();
        Get.back();
      },
      buttonColor: AppColors.mainColor,
    );
  }

  get productsSubTotal =>
      cartsMap.entries.map((e) => e.key.price * e.value).toList();

  get total => cartsMap.entries
      .map((e) => e.key.price * e.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);

  int quantity() {
    if (cartsMap.isEmpty) {
      return 0;
    } else {
      return cartsMap.entries
          .map((e) => e.value)
          .toList()
          .reduce((value, element) => value + element);
    }
  }
}
/*  final CartRepo cartRepo;

  var cartsMap = {}.obs;

  CartController({required this.cartRepo});

  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

/*
   Only for storage and sharedprefrences
   */

  List<CartModel> storageItems = [];

  void addProductToCart(CartModel cartModel) {
    if (cartsMap.containsKey(cartModel)) {
      cartsMap[cartModel] += 1;
    } else {
      cartsMap[cartModel] = 1;
    }
  }

  /*void addItem(CartModel cartModel, int quantity) {
    var totalQuantity = 0;
    if (_items.containsKey(cartModel)) {
      _items.update(cartModel.id!, (value) {
        totalQuantity = value.quantity! + quantity;
        return CartModel(
         /* id: value.id,
         name: value.name,
          price: value.price,
          coverImg: value.coverImg,
          quantity: value.quantity! + quantity,
          date: DateTime.now().toString(),*/
        );
      });
      if (totalQuantity <= 0) {
        _items.remove(cartModel.id);
      }
    } else {
      if (quantity > 0) {
        _items.putIfAbsent(cartModel.id!, () {
          // print("adding items to the cart id"+product.id.toString()+"quantity"+quantity.toString());
          return CartModel();
        });
        if (totalQuantity <= 0) {
          _items.remove(cartModel.id);
        }
      } else {
        if (quantity > 0) {
          _items.putIfAbsent(cartModel.id!, () {
            // print("adding items to the cart id"+product.id.toString()+"quantity"+quantity.toString());
            return CartModel();
          });
        } else {
          Get.snackbar(
            "Item count",
            "You should at least add item to the cart",
            backgroundColor: AppColors.mainColor,
            colorText: Colors.white,
          );
        }
      }
    }
    cartRepo.addToCartList(getItems);
    update();
  }*/

  bool existInCart(CartModel product) {
    if (_items.containsKey(product.id)) {
      return true;
    }
    return false;
  }

  int getQuantity(CartModel product){
    var quantity=0;
    if(_items.containsKey(product.id)){
      _items.forEach((key, value) {
        if(key==product.id){
          quantity=value.quantity!;
        }
      });
    }
    return quantity;
  }

  int get totalItems{
    var totalQuantity=0;
    _items.forEach((key, value) {
      totalQuantity += value.quantity! ;
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
      total += value.quantity!*value.price!;
    });
    return total;
  }

  List<CartModel> getCartData(){
  setCart=cartRepo.getCartList();
    return storageItems;
  }

  set setCart(List<CartModel> items){
    storageItems = items;
    // print('length of cart items'+storageItems.length.toString());
    for(int i=0; i<storageItems.length;i++){
      _items.putIfAbsent(storageItems[i].id!, () => storageItems[i]);
    }
  }

  void clear(){
    _items={};
    update();
  }

 set setItems(Map<int,CartModel> setItems){
    _items={};
    _items=setItems;
 }

 void addToCartList(){
    cartRepo.addToCartList(getItems);
    update();
 }

 void removeCartSharedPrefrences(){
    cartRepo.removeCartSharedPrefrences();
 }
 }
 */
