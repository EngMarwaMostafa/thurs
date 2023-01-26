/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controllers/auth_controller.dart';
import '../../../controllers/contact_controller.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/app_text_field.dart';
import '../details/my_order_screen.dart';
import '../payment/payment_screen.dart';
import 'checkout_screen.dart';


class NewAddressScreen extends StatefulWidget {
  const NewAddressScreen({Key? key}) : super(key: key);

  @override
  State<NewAddressScreen> createState() => _NewAddressScreenState();
}

class _NewAddressScreenState extends State<NewAddressScreen> {


  TextEditingController _contactPhone = TextEditingController();
  TextEditingController _contactEmail = TextEditingController();
  TextEditingController _contactAddressTitle = TextEditingController();
  TextEditingController _contactLocation = TextEditingController();
  late bool _isLogged;

  CameraPosition _cameraPosition =
  CameraPosition(target: LatLng(30.087185, 31.340929), zoom: 17);

  late LatLng _initialPosition = LatLng(30.087185, 31.340929);

  @override
  void initState() {
    super.initState();
    _isLogged = Get.find<AuthController>().UserLoggedIn();
    Get.find<ContactController>().getUserAddress();
    _cameraPosition = CameraPosition(
        target: LatLng(
          double.parse(Get
              .find<ContactController>()
              .getAddress['latitude']),
          double.parse(Get
              .find<ContactController>()
              .getAddress['longitude']),
        ));
    _initialPosition = LatLng(
      double.parse(Get
          .find<ContactController>()
          .getAddress['latitude']),
      double.parse(Get
          .find<ContactController>()
          .getAddress['longitude']),
    );
  }

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
          'New Address',
          style: TextStyle(
            fontSize: 22.sp,
            color: AppColors.brandColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GetBuilder<ContactController>(
          builder: (contactController) {
            if (contactController.contactModel != null &&
                _contactAddressTitle.text.isEmpty) {
              _contactAddressTitle.text =
              '${contactController.contactModel!.data!.titleEn}';
              _contactPhone.text =
              '${contactController.contactModel!.data!.phone}';
              _contactEmail.text =
              '${contactController.contactModel!.data!.email}';
            }
              return GetBuilder<ContactController>(
                  builder: (contactController) {
                    _contactLocation.text =
                    '${contactController.placemark.name ?? ''}'
                        '${contactController.placemark.country ?? ''}';
                    return SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          Container(
                            height: 50.h,
                            child: Row(
                              children: [
                                Container(
                                  height: 50.h,
                                  width: 110.w,
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
                                      AssetImage('assets/icons/location.png')),
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
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(MyOrderScreen());
                                        },
                                        child: ImageIcon(
                                          AssetImage(
                                            'assets/app/hand.png',
                                          ),
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 126.w),
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(PaymentScreen());
                                        },
                                        child: ImageIcon(
                                          AssetImage('assets/app/credit.png'),
                                          color: Colors.white,
                                        ),
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
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Container(
                                  width: 340.w,
                                  height: 38.h,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 170.w,
                                        height: 38.h,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: AppColors.mainColor),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.r),
                                            bottomLeft: Radius.circular(10.r),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: GestureDetector(
                                          onTap: () {
                                            Get.to(CheckoutScreen());
                                          },
                                          child: Text(
                                            'Saved Address',
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              color: AppColors.newwColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 170.w,
                                        height: 38.h,
                                        decoration: BoxDecoration(
                                          color: AppColors.mainColor,
                                          border: Border.all(
                                              color: AppColors.mainColor),
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.r),
                                            bottomRight: Radius.circular(10.r),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'New address',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
                                  textEditingController: _contactEmail,
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
                                  controller: _contactLocation,
                                  decoration: InputDecoration(
                                    hintText: 'Address Location Details',
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.r),
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
                                  textEditingController: _contactPhone,
                                  hintText: 'Phone number'),
                              SizedBox(
                                height: 37.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.w, top: 20.h),
                                child: Container(
                                  width: 343.w,
                                  height: 46.h,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            5.r),
                                        gradient: LinearGradient(colors: [
                                          AppColors.but1Color,
                                          AppColors.but2Color
                                        ])),
                                    child: ElevatedButton(
                                      onPressed: ()
                                      {
                                     contactController.contactModel!.data!.titleEn;
                                      contactController.contactModel!.data!.email;
                                      contactController.contactModel!.data!.phone;
                                      contactController.contactModel!.data!.latitude.toString();
                                      contactController.contactModel!.data!.longitude.toString();
                                   //   contactController.getAddress
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 15.w,
                                          ),
                                          Text(
                                            'ADD ADDRESS',
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
                    );
                  }
              );
            }
      ),
    );
  }
}
*/