import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nib/view/pages/checkout/edit_profile_screen.dart';
import '../../../utils/app_colors.dart';
import '../about/abou_us_screen.dart';
import '../auth/account_detail_screen.dart';
import '../contact/contact_us_screen.dart';
import '../language/change_language_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
          color: Colors.white,
          onPressed: () {
            Get.back();
          }, icon: Icon(Icons.arrow_back_ios,),
        ),
        backgroundColor: AppColors.mainColor,
        title: Text(
          'MENU',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
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
                  SizedBox(width: 17.w),
                  ImageIcon(AssetImage('assets/icons/brand.png'),color: AppColors.mainColor,),
                  SizedBox(width: 14.w),
                  Text('Brand',style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 15.sp,
                  ),),
                  Padding(
                    padding: EdgeInsets.only(left: 240.w),
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.but2Color,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
            Divider(thickness: 2, color: AppColors.formColor),
            Container(
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 17.w),
                  ImageIcon(AssetImage('assets/app/fav.png'),color: AppColors.mainColor,),
                  SizedBox(width: 14.w),
                  Text('Wish List',style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 15.sp,
                  ),),
                  Padding(
                    padding: EdgeInsets.only(left: 215.w),
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.but2Color,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
            Divider(thickness: 2, color: AppColors.formColor),
            Container(
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 17.w),
                  ImageIcon(AssetImage('assets/app/contact.png'),color: AppColors.mainColor,),
                  SizedBox(width: 14.w),
                  GestureDetector(
                    onTap: (){
                      Get.to(ContactUsScreen());
                    },
                    child: Text('Contact Us',style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 15.sp,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200.w),
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.but2Color,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
            Divider(thickness: 2, color: AppColors.formColor),
            Container(
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 17.w),
                  ImageIcon(AssetImage('assets/app/about.png'),color: AppColors.mainColor,),
                  SizedBox(width: 14.w),
                  GestureDetector(
                    onTap: (){
                      Get.to(AboutUsScreen());
                    },
                    child: Text('About Us',style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 15.sp,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 210.w),
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.but2Color,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
            Divider(thickness: 2, color: AppColors.formColor),
            Container(
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 17.w),
                  ImageIcon(AssetImage('assets/app/share.png'),color: AppColors.mainColor,),
                  SizedBox(width: 14.w),
                  Text('Share',style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 15.sp,
                  ),),
                  Padding(
                    padding: EdgeInsets.only(left: 235.w),
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.but2Color,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
            Divider(thickness: 2, color: AppColors.formColor),
            Container(
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 17.w),
                  ImageIcon(AssetImage('assets/app/profile.png'),color: AppColors.mainColor,),
                  SizedBox(width: 14.w),
                  GestureDetector(
                    onTap: (){
                      Get.to(EditProfileScreen());
                    },
                    child: Text('Profile',style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 15.sp,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 230.w),
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.but2Color,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
            Divider(thickness: 2, color: AppColors.formColor),
            Container(
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 17.w),
                  ImageIcon(AssetImage('assets/app/lang.png'),color: AppColors.mainColor,),
                  SizedBox(width: 14.w),
                  GestureDetector(
                    onTap: (){
                      Get.to(ChangeLanguageScreen());
                    },
                    child: Text('Language',style: TextStyle(
                      fontWeight: FontWeight.w600,fontSize: 15.sp,
                    ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 210.w),
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.but2Color,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
            Divider(thickness: 2, color: AppColors.formColor),
            Container(
              height: 30.h,
              child: Row(
                children: [
                  SizedBox(width: 17.w),
                  ImageIcon(AssetImage('assets/app/notification.png'),color: AppColors.mainColor,),
                  SizedBox(width: 14.w),
                  Text('Notifications',style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 15.sp,
                  ),),
                  Padding(
                    padding: EdgeInsets.only(left: 190.w),
                    child: Container(
                      width: 29.w,
                      height: 29.h,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Padding(
                          padding: EdgeInsets.only(left: 3.w),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.but2Color,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50.h,
              child: Row(
                children: [
                  SizedBox(width: 17.w),
                  ImageIcon(AssetImage('assets/app/exit.png'),color: AppColors.mainColor,),
                  SizedBox(width: 14.w),
                  Text('Logout',style: TextStyle(
                    fontWeight: FontWeight.w600,fontSize: 15.sp,
                  ),),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
