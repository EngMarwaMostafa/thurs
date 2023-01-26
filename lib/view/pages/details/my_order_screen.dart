import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import 'order_details_screen.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

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
          }, icon: Icon(Icons.arrow_back_ios,),
        ),
        title: Text(
          'My Order',
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
              padding: EdgeInsets.only(left: 14.w, top: 10.h),
              child: Container(
                width: 347.w,
                height: 236.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:EdgeInsets.only(left: 16.w,top: 15.h),
                          child: Column(
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
                                height: 13.h,
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
                                height: 13.h,
                              ),
                              Text(
                                'Order Status',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
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
                        ),
                        SizedBox(width: 100.w,),
                        Padding(
                          padding: EdgeInsets.only(top: 15.h),
                          child: Column(
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
                                height: 13.h,
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
                                height: 13.h,
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
                                height: 13.h,
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
                                height: 13.h,
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
                        ),
                      ],
                    ),
                    SizedBox(height: 17.sp,),
                    GestureDetector(
                      onTap: () {
                        Get.to(OrderDetailsScreen());
                      },
                      child: Container(
                        width: 116.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Text(
                          'Order Details', style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 28.h,),
            Padding(
              padding: EdgeInsets.only(left: 14.w, top: 10.h),
              child: Container(
                width: 347.w,
                height: 236.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:EdgeInsets.only(left: 16.w,top: 15.h),
                          child: Column(
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
                                height: 13.h,
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
                                height: 13.h,
                              ),
                              Text(
                                'Order Status',
                                style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.orderColor,
                                ),
                              ),
                              SizedBox(
                                height: 13.h,
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
                        ),
                        SizedBox(width: 100.w,),
                        Padding(
                          padding: EdgeInsets.only(top: 15.h),
                          child: Column(
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
                                height: 13.h,
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
                                height: 13.h,
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
                                height: 13.h,
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
                                height: 13.h,
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
                        ),
                      ],
                    ),
                    SizedBox(height: 17.sp,),
                    GestureDetector(
                      onTap: () {
                        Get.to(OrderDetailsScreen());
                      },
                      child: Container(
                        width: 116.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                        child: Text(
                          'Order Details', style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 58.h,),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 116.w,
                height: 30.h,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3.r),
                    gradient: LinearGradient(
                        colors: [AppColors.but1Color, AppColors.but2Color])),
                child: Text(
                  'LOAD MORE', style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.cartColor,
                ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ], ),
      ),);
  }
}
