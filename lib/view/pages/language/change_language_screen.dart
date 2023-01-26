import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/app_colors.dart';



class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({Key? key}) : super(key: key);

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {

  int radioIndex = 1;
  int radioLangIndex = 1;

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
          'Change Language',
          style: TextStyle(
            fontSize: 17.sp,
            color: AppColors.font1Color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.only(top: 37.h,bottom: 55.h),
            child: Text('Choose your Preferrd Language',
              style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.font1Color,
              ),),
          ),
          Padding(
            padding:EdgeInsets.only(bottom: 20.h),
            child: Text('Please select your language',
              style: TextStyle(
                fontSize: 19.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.font1Color,
              ),),),
          Divider(thickness: 2, color: AppColors.formColor),
          Padding(
            padding:EdgeInsets.only(bottom: 20.w,top: 15.h,left: 52.w),
            child: Row(
              children: [
                Radio(
                  groupValue: radioLangIndex,
                  fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.mainColor),
                  value: 1,
                  onChanged: (int? value) {
                    setState(() {
                      radioLangIndex = value!;
                    });
                  },
                ),
                SizedBox(width: 23.w,),
                Text('اللغة العربية',
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.font1Color,
                  ),
                ),
              ],
            ),

          ),
          Divider(thickness: 2, color: AppColors.formColor),
          Padding(
            padding:EdgeInsets.only(bottom: 20.w,top: 15.h,left: 52.w),
            child: Row(
              children: [
                Radio(
                  groupValue: radioLangIndex,
                  fillColor: MaterialStateColor.resolveWith(
                          (states) => AppColors.mainColor),
                  value: 2,
                  onChanged: (int? value) {
                    setState(() {
                      radioLangIndex = value!;
                    });
                  },
                ),
                SizedBox(width: 23.w,),
                Text('English Language',
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.font1Color,
                  ),
                ),
              ],
            ),

          ),
          Padding(
            padding: EdgeInsets.only(left:5.w,top: 150.h),
            child: Container(
              width: 337.w,
              height: 46.h,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    gradient: LinearGradient(
                        colors: [AppColors.but1Color, AppColors.but2Color])),
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                  ElevatedButton.styleFrom(primary: Colors.transparent),
                  child: Row(
                    children: [
                      SizedBox(width: 110.w,),
                      Text(
                        'SAVE CHANGES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          color: AppColors.cartColor,
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
    );
  }
}
