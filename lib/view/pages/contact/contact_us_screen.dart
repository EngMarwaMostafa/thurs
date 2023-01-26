import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/app_colors.dart';


class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

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
          'Contact Us',
          style: TextStyle(
            fontSize: 22.sp,
            color: AppColors.brandColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
      SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Column(
              children: [
                SizedBox(height:55.h),
                Text('Do you have any question? feel free to contact us. we will get back to you as soon as possible!',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp,
                      color: AppColors.orderColor
                  ),),
                SizedBox(height: 25.h,),
                Padding(
                  padding:EdgeInsets.only(right: 290.w),
                  child: Text('Subject', style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp,
                      color: AppColors.orderColor
                  ),),
                ),
                SizedBox(height: 13.h,),
                Container(
                  width: 337.w,
                  height: 45.h,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),),
                    ),
                  ),
                ),
                SizedBox(height: 17.h,),
                Padding(
                  padding:EdgeInsets.only(right:246.w),
                  child: Text('Your Message', style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.sp,
                      color: AppColors.orderColor
                  ),),
                ),
                SizedBox(height: 13.h,),
                Container(
                  width: 337.w,
                  height: 155.h,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),),
                    ),
                  ),
                ),
                SizedBox(height: 26.h,),
                Container(
                  width: 320.w,
                  height: 48.h,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      gradient: LinearGradient(colors: [
                        AppColors.but1Color,
                        AppColors.but2Color
                      ],),),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent),
                      child: Text(
                        'SUBMIT ',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: AppColors.cartColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}