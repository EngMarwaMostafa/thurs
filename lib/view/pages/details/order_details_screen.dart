import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';


class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.detailColor,
      appBar: AppBar(
        backgroundColor: AppColors.detailColor,
        leading: IconButton(
          color: AppColors.mainColor,
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Order Details',
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
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 10.h),
              child: Container(
                width: 347.w,
                height: 190.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14.w, top: 15.h),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Total Amount',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'items',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Order Status',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              Text(
                                'Date',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 110.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '#20200062',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'SR 3441.25',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'Order Placed',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                'June 09, 2020',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.fontColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 14.w, left: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Items(10)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                  Text(
                    'Invoice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Container(
              width: 351.w,
              height: 120.h,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
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
            ),
            SizedBox(height: 10.h,),
            Container(
              width: 351.w,
              height: 120.h,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 105.w,
                      height: 105.h,
                      child: const Image(
                        image: AssetImage(
                          'assets/img/bottom.png',
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
            ),
            SizedBox(height: 19.h,),
            Padding(
              padding:  EdgeInsets.only(right: 205.w),
              child: Text(
                'Summary Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 18.h,),
              child: Container(
                width: 340.w,
                height: 179.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 14.w, top: 13.h),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sub Total',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'Total Tax',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'Shipping Fee',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'CODE Charge',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 19.h,
                              ),
                              Text(
                                'Amount Paid',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.mainColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 160.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'SR 200.00',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'SR 10.00',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'SR 15.00',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                'SR 12.00',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 19.h,
                              ),
                              Text(
                                'SAR 237.00',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.fontColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 12.h),
              child: Container(
                width: 340.w,
                height: 82.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 12.h, left: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Time',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.orderColor,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        '3-5 Working Days',
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 19.h),
            Padding(
              padding: EdgeInsets.only(left: 5.w, bottom: 19.h),
              child: Container(
                width: 341.w,
                height: 46.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      gradient: LinearGradient(colors: [
                        AppColors.but1Color,
                        AppColors.but2Color
                      ])),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        Text(
                          'CANCEL ORDER',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            color: AppColors.cartColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:8.w,),
              child: Container(
                width: 340.w,
                height: 135.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 12.w, top: 7.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shipping Address',
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.mainColor,
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
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
                        height: 8.h,
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
                        height: 9.h,
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
            ),
          ],
        ),
      ),
    );
  }
}
