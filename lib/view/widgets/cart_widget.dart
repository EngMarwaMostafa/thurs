import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nib/controllers/cart_controller.dart';
import '../../utils/app_colors.dart';

class CartItems extends StatelessWidget {
  CartItems({Key? key,
    this.image,
    this.name,
    this.price,
    this.iconTap, this.quantity,
       })
      : super(key: key);
  final String? image;
  final String? name;
  final String? price;
  final Function()? iconTap;
  final String? quantity;

  //final controller = Get.find<CartController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column
            (mainAxisSize: MainAxisSize.min,
              children: [
        SizedBox(
          height: 27.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.w, right: 19.w),
          child: Container(
            width: 340.w,
            height: 120.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.r),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  width: 109.w,
                  height: 109.h,
                  child: Image.network(
                  image!,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Column(
                  children: [
                    Text(
                     name!,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: AppColors.font1Color,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      price!,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.heightColor,
                      ),
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                   //   controller.removeOneProduct(cartModel!);
                          },
                          icon: Icon(Icons.remove_circle, size: 35,),
                        ),
                        SizedBox(width: 10.w,),
                        Text(
                          quantity!,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: AppColors.oneColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                         //   controller.addProductToCart(cartModel!);
                          },
                          icon: Icon(Icons.add_circle, size: 35,),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 71.w,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 95.h),
                  child: ImageIcon(AssetImage('assets/icons/close.png')),
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
