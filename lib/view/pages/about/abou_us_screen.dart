import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/app_colors.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

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
          'About Us',
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
            padding: EdgeInsets.only(top: 27.h, left: 20.w, right: 17.w),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuriesIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software.',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal,
                  color: AppColors.aboutColor),
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 194.w),
            child: Text(
              'Connect With us',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: AppColors.connectColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 18.h),
            child: Row(
              children: [
                Container(
                    width: 45.w,
                    height: 45.h,
                    child: ImageIcon(
                      AssetImage('assets/img/fb.png'),
                    )),
                SizedBox(
                  width: 24.w,
                ),
                Container(
                    width: 45.w,
                    height: 45.h,
                    child: ImageIcon(
                      AssetImage('assets/img/twitter.png'),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
