import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nib/controllers/auth_controller.dart';
import 'package:nib/controllers/user_controller.dart';
import '../../../routes/router_helper.dart';
import '../../../utils/app_colors.dart';

class AccountDetailScreen extends StatelessWidget {
  const AccountDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _userLoggedIn = Get.find<AuthController>().userLoggedIn();
    if (_userLoggedIn) {
      Get.find<UserController>().getUserInfo();
      //print('User has Logged in');
    }

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
            'Edit Profile',
            style: TextStyle(
              fontSize: 17.sp,
              color: AppColors.font1Color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body:
        GetBuilder<UserController>(
            builder: (userController) {
          return
            _userLoggedIn
              ? (userController.isLoading
                  ?
          SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 35.h),
                                  child: Image(
                                    image: AssetImage(
                                      userController.userModel!.data!.photo!,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 21.h,
                                ),
                                Text(
                                  'Update Profile Picture',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.sp,
                                    color: AppColors.orderColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 33.h,
                          ),
                          Divider(thickness: 1, color: AppColors.formColor),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 23.w, bottom: 20.h, top: 20.h),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage('assets/img/person.png'),
                                  color: AppColors.mainColor,
                                ),
                                SizedBox(
                                  width: 23.w,
                                ),
                                Text(
                                  userController.userModel!.data!.name!,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.orderColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1, color: AppColors.formColor),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 23.w, bottom: 20.h, top: 20.h),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage('assets/img/email.png'),
                                  color: AppColors.mainColor,
                                ),
                                SizedBox(
                                  width: 23.w,
                                ),
                                Text(
                                  userController.userModel!.data!.email!,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.orderColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1, color: AppColors.formColor),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 23.w, bottom: 20.h, top: 20.h),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage('assets/img/phone.png'),
                                  color: AppColors.mainColor,
                                ),
                                SizedBox(
                                  width: 23.w,
                                ),
                                Text(
                                  userController.userModel!.data!.mobile,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.orderColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1, color: AppColors.formColor),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 23.w, bottom: 20.h, top: 20.h),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.lock,
                                  color: AppColors.mainColor,
                                ),
                                SizedBox(
                                  width: 23.w,
                                ),
                                Text(
                                  userController.userModel!.data!.gender!,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.orderColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1, color: AppColors.formColor),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 23.w, bottom: 20.h, top: 20.h),
                            child: Row(
                              children: [
                                ImageIcon(
                                  AssetImage('assets/img/calender.png'),
                                  color: AppColors.mainColor,
                                ),
                                SizedBox(
                                  width: 23.w,
                                ),
                                Text(
                                  userController.userModel!.data!.dateOfBirth!,
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.orderColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(thickness: 1, color: AppColors.formColor),
                        ],
                      ),
                    )
                  : CircularProgressIndicator())
             :
          Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                /*        Container(
                          width: 30,
                          height: 50.h,
                          margin: EdgeInsets.only(
                            left: 10.w,
                            right: 10.w,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              image: DecorationImage(
                               //   fit: BoxFit.cover,
                                  image: AssetImage('assets/img/bike.png'))),
                        ),*/
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteHelper.getLoginPage());
                          },
                          child: Container(
                            width: double.maxFinite,
                            height: 50.h,
                            margin: EdgeInsets.only(
                              left: 20.w,
                              right: 20.w,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              borderRadius:
                                  BorderRadius.circular(20.r),
                            ),
                            child: Center(
                              child:Text(
                                 'Log in',
                                 style: TextStyle(
                                   fontSize: 40.sp,
                                   color: Colors.white,
                                 ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        }));
  }
}
