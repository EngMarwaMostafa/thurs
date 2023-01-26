import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/app_colors.dart';
import '../payment/payment_screen.dart';
import 'checkout_screen.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({Key? key}) : super(key: key);

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.detailColor,
      appBar: AppBar(
        backgroundColor: AppColors.detailColor,
        leading:IconButton(
          color: AppColors.mainColor,
          onPressed: () {
            Get.back();
          }, icon: Icon(Icons.arrow_back_ios,),
        ),
        title: Text(
          'Checkout',
          style: TextStyle(
            fontSize: 22.sp,
            color: AppColors.brandColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 50.h,
              child: Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 125.w,
                    color: AppColors.appblackColor,
                    child: GestureDetector(
                      onTap: (){
                        Get.to(CheckoutScreen());
                      },
                      child: ImageIcon(
                        AssetImage('assets/icons/location.png'),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 50.h,
                    width: 125.w,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            AppColors.but1Color,
                            AppColors.but2Color,
                          ],
                        )),
                    child: ImageIcon(
                      AssetImage(
                        'assets/icons/check.png',
                      ),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 50.h,
                    width: 125.w,
                    color: AppColors.appblackColor,
                    child: GestureDetector(
                      onTap: (){
                        Get.to(PaymentScreen());
                      },
                      child: ImageIcon(
                        AssetImage('assets/icons/credit.png'),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 19.w),
              child: Container(
                width: 340.w,
                height: 145.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Text(
                            'Shipping Address',
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 106.w,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 11.h, right: 11.h),
                          child: Container(
                            width: 70.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              color: AppColors.brandColor,
                              borderRadius: BorderRadius.circular(3.r),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              'EDIT',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 192.w),
                      child: Text(
                        'ASRAF ALmASHAHRI',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.font1Color,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 246.w),
                      child: Text(
                        'Saudi Arabia',
                        style: TextStyle(
                            fontSize: 14.sp, color: AppColors.font1Color),
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7.w, right: 265.w),
                      child: Text(
                        'Riyadh',
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 182.w,
                bottom: 14.h,
              ),
              child: Text(
                'Your Orders (10)',
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              width: 340.w,
              height: 120.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.r)
              ),
              child: Row(
                children: [
                  Container(
                    width: 105.w,
                    height: 105.h,
                    child: const Image(
                      image: AssetImage(
                        'assets/img/detail.png',
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Blue Stripped Top',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp,
                          color: AppColors.font1Color,
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text(
                        'SAR 399.00',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.heightColor,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        'Qty:3',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 340.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.r),
              ),
              child: Row(
                children: [
                  Container(
                    width: 105.w,
                    height: 105.h,
                    child: const Image(
                      image: AssetImage(
                        'assets/img/one.png',
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Blue Stripped Top',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp,
                          color: AppColors.font1Color,
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text(
                        'SAR 399.00',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.heightColor,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        'Qty:3',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.h,),
            Container(
              width: 340.w,
              height: 120.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.r),
              ),
              child: Row(
                children: [
                  Container(
                    width: 105.w,
                    height: 105.h,
                    child: const Image(
                      image: AssetImage(
                        'assets/img/detail.png',
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Blue Stripped Top',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp,
                          color: AppColors.font1Color,
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Text(
                        'SAR 399.00',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.heightColor,
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                      ),
                      Text(
                        'Qty:3',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17.sp,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 29.h,),
            Container(
              width: 340.w,
              height: 179.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.r),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 11.w, right: 18.w, top: 12.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Payment summary',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.orderColor,
                          ),
                        ),
                        SizedBox(width: 155.w),
                        Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Order Total',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.orderColor,
                          ),
                        ),
                        SizedBox(width: 175.w),
                        Text(
                          'SAR 11,196',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.orderColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Delivery charge',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.orderColor,
                          ),
                        ),
                        SizedBox(width: 188.w),
                        Text(
                          'Free',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.mainColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Tax',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.orderColor,
                          ),
                        ),
                        SizedBox(width: 265.w),
                        Text(
                          '5%',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.orderColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 11.h),
                    Row(
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(width: 148.w),
                        Text(
                          'SAR-599.99',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.mainColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: Container(
                width: 340.w,
                height: 82.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.r),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:  EdgeInsets.only(left: 15.w,top: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivery Time',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.orderColor,
                        ),),
                      SizedBox(height: 10.h,),
                      Text(
                        '3-5 Working days',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.mainColor,
                        ),
                      ),
                      SizedBox(height: 20.h,)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w,top: 26.h),
              child: Container(
                width: 341.w,
                height: 46.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      gradient: LinearGradient(
                          colors: [AppColors.but1Color, AppColors.but2Color])),
                  child: ElevatedButton(
                    onPressed: () {
                      //  Get.to(OrderListScreen());
                    },
                    style:
                    ElevatedButton.styleFrom(primary: Colors.transparent),
                    child: Row(
                      children: [
                        SizedBox(width: 15.w,),
                        Text(
                          'ORDER NOW',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
