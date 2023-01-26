/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nib/controllers/auth_controller.dart';
import 'package:nib/controllers/user_controller.dart';
import '../../../routes/router_helper.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/app_text_field.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var addressController = TextEditingController();
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var districtController = TextEditingController();
    var cityController = TextEditingController();
    var streetController = TextEditingController();
    var phoneController = TextEditingController();
    var locationController = TextEditingController();

    late bool _isLoggedIn;

    CameraPosition _cameraPosition =
    CameraPosition(target: LatLng(30.087185, 31.340929), zoom: 17);

    late LatLng _initialPosition = LatLng(30.087185, 31.340929);

    @override
   void initState(){
    super.initState();
    _isLoggedIn=Get.find<AuthController>().userLoggedIn();
    if(_isLoggedIn && Get.find<UserController>().userModel==null){
      Get.find<UserController>().getUserInfo();
    }
  }


    return Scaffold(
        backgroundColor: AppColors.detailColor,
        appBar: AppBar(
          backgroundColor: AppColors.detailColor,
          leading: Icon(
            Icons.arrow_back_ios,
            color: AppColors.mainColor,
          ),
          title: Text(
            'Edit Address',
            style: TextStyle(
              fontSize: 22.sp,
              color: AppColors.brandColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: GetBuilder<UserController>(
          builder: (userController) {
          return userLoggedIn
                ? (userController.isLoading
                    ? SingleChildScrollView(
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
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        AppColors.but1Color,
                                        AppColors.but2Color,
                                      ],
                                    )),
                                    child: ImageIcon(AssetImage(
                                        'assets/icons/location.png')),
                                  ),
                                  Container(
                                    width: 250.w,
                                    height: 50.h,
                                    color: AppColors.appblackColor,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 50.w,
                                        ),
                                        ImageIcon(
                                          AssetImage(
                                            'assets/app/hand.png',
                                          ),
                                          color: Colors.white,
                                        ),
                                        SizedBox(width: 126.w),
                                        ImageIcon(
                                          AssetImage('assets/app/credit.png'),
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 34.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 26.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text(
                                    'Address Title',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.brandColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                AppTextField(
                                    textEditingController: addressController,
                                    hintText: 'Address title'),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text(
                                    'Full Name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.brandColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 12.h,
                                ),
                                AppTextField(
                                    textEditingController: nameController,
                                    hintText: 'Full Name'),
                                SizedBox(
                                  height: 14.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text(
                                    'Email',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.brandColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                AppTextField(
                                    textEditingController: emailController,
                                    hintText: 'Email'),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text(
                                    'Address Location Details',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.brandColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Container(
                                  width: 338.w,
                                  height: 112.h,
                                  margin: EdgeInsets.only(
                                    left: 15.w,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5.r),
                                  ),
                                  child: TextField(
                                    controller: locationController,
                                    decoration: InputDecoration(
                                      hintText: 'Address Location Details',
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.r),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text(
                                    'District',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.brandColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                AppTextField(
                                    textEditingController: districtController,
                                    hintText: 'District'),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text(
                                    'City',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.brandColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                AppTextField(
                                    textEditingController: cityController,
                                    hintText: 'City'),
                                SizedBox(
                                  height: 14.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text(
                                    'street name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.brandColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                AppTextField(
                                    textEditingController: streetController,
                                    hintText: 'Street name'),
                                SizedBox(
                                  height: 12.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.w),
                                  child: Text(
                                    'Phone number',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.brandColor,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                AppTextField(
                                    textEditingController: phoneController,
                                    hintText: 'Phone number'),
                                SizedBox(
                                  height: 37.h,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.w, top: 20.h),
                                  child: Container(
                                    width: 343.w,
                                    height: 46.h,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
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
                                              'SAVE ADDRESS',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp,
                                                color: AppColors.cartColor,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 180.w,
                                            ),
                                            Container(
                                              width: 29.w,
                                              height: 29.h,
                                              child: CircleAvatar(
                                                backgroundColor: Colors.black,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 3.w),
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: AppColors.but2Color,
                                                    size: 15,
                                                  ),
                                                ),
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
                          ],
                        ),
                      )
                    : CircularProgressIndicator())
                : Container(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.maxFinite,
                            height: double.maxFinite,
                            margin: EdgeInsets.only(
                              left: 20.w,
                              right: 20.w,
                            ),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(20.r),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/bike.png'))),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(RouteHelper.getLoginPage());
                            },
                            child: Container(
                              width: double.maxFinite,
                              height: 100.h,
                              margin: EdgeInsets.only(
                                left:20.w,
                                right: 20.w,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius:
                                    BorderRadius.circular(20.r),
                              ),
                              child: Center(
                                child: Text(
                                 'Log in',
                                  style: TextStyle(
                                  fontSize: 40.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          ), ],
                      ),
                    ),
                  );
          },
        ));
  }
}
*/