
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../base/show_ustom_bar.dart';
import '../../../controllers/auth_controller.dart';
import '../../../routes/router_helper.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/app_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  void Validate(String email) {
    bool isvalid = EmailValidator.validate(email);

  }

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();


    void _registration() {
      var authController=Get.find<AuthController>();
      String name=nameController.text.trim();
      String email=emailController.text.trim();
      String password=passwordController.text.trim();

      if (name.isEmpty) {
        showCustomSnackbar('Type in your name', title: 'Name');
        validator: (value) => EmailValidator.validate(value) ? null : "Please enter a valid email";
      } else if (email.isEmpty) {
        showCustomSnackbar('Type in your email address',
            title: 'Email Address');
      }
      else if (password.isEmpty) {
        showCustomSnackbar('Type in your password', title: 'Password');
      } else if (password.length < 6) {
        showCustomSnackbar(
            'password can not be less than six characters', title: 'Password');
      } else {
        showCustomSnackbar('All Went Well', title: 'Perfect');
        authController.registration(name, email, password).then((status) {
        });
      }
    }

    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body:
      GetBuilder<AuthController>(builder: (authController) {
        return !authController.isLoading ?
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 68.h),
                child: Center(
                  child: Image(
                    image: AssetImage('assets/img/logo.png'),
                    fit: BoxFit.fill,
                    width: 200.w,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: 350.w,
                height: 460.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 48.0.w, top: 16.h),
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(RouteHelper.getLoginPage());
                              },
                              child: Text(
                                'SIGN IN',
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.greyColor,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 104.w,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 25.h),
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.fontColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Container(
                                width: 39.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  color: AppColors.fontColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Divider(thickness: 2, color: AppColors.formColor),
                      SizedBox(
                        height: 17.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 76.0.w),
                        child: Text(
                          'Welcome, Please login to your account',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: AppColors.blackColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      AppTextField(
                          textEditingController: nameController,
                          hintText: 'Name'),
                      SizedBox(
                        height: 15.h,
                      ),
                      AppTextField(
                          textEditingController: emailController,
                          hintText: 'Email'),
                      SizedBox(
                        height: 15.h,
                      ),
                      AppTextField(
                          textEditingController: passwordController,
                          hintText: 'Password'),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Center(
                        child: Container(
                          width: 320.w,
                          height: 48.h,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                                gradient: LinearGradient(colors: [
                                  AppColors.but1Color,
                                  AppColors.but2Color
                                ])),
                            child: ElevatedButton(
                              onPressed: () {
                                _registration();
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent),
                              child: Text(
                                'SIGN UP ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 27.h,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 70.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Already have an account  ',
                          style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteHelper.getLoginPage());
                          },
                          child: Text('Sign In',
                            style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 43.h,),
                  ],
                ),
              ),
            ],
          ),
        ):CircularProgressIndicator();
      } ),
    );
  }
}
