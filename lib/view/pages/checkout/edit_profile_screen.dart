import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nib/controllers/auth_controller.dart';
import 'package:nib/controllers/contact_controller.dart';
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

  var addressController = TextEditingController();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var fLocationController = TextEditingController();
  var districtController = TextEditingController();
  var cityController = TextEditingController();
  var streetController = TextEditingController();
  var stateController = TextEditingController();
  var addressNameController = TextEditingController();
  late bool _isLoggedIn;

  CameraPosition _cameraPosition =
  CameraPosition(target: LatLng(30.087185, 31.340929), zoom: 17);

  late LatLng _initialPosition = LatLng(30.087185, 31.340929);

  @override
  void initState() {
    super.initState();
    _isLoggedIn = Get.find<AuthController>().userLoggedIn();
    // if (_isLoggedIn && Get.find<UserController>().userModel == null) {
    //  Get.find<UserController>().getUserInfo();
    //  }
  }

  @override
  Widget build(BuildContext context) {
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
        body:
        GetBuilder<ContactController>(
            builder: (contactController) {
            return
               !contactController.isLoading ?
                SingleChildScrollView(
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
                              child:
                              ImageIcon(AssetImage(
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
                              'Address Name',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.brandColor,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          AppTextField(
                              textEditingController: emailController,
                              hintText: 'Address name'),
                          SizedBox(
                            height: 12.h,
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
                            child: InkWell(
                              child: GoogleMap(
                                myLocationEnabled: true,
                                initialCameraPosition: CameraPosition(
                                    target: _initialPosition, zoom: 17),
                                onMapCreated: (GoogleMapController controller) {
                                      (double? LatLang) {
                                    //  contactController.mapController;
                                  };
                                },
                              ),
                              onTap: () async {}
                            /*  contactController.getUserCurrentLocation().then(
                                    (future) async {},
                              );
                              CameraPosition cameraPosition = CameraPosition(
                                  target: LatLng(
                                    double.parse(
                                        contactController.locationController
                                            .future!.data!.latitude!),
                                    double.parse(
                                        contactController.locationController
                                            .future!.data!.longitude!),
                                  )

                              );
                              },*/
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
                            padding: EdgeInsets.only(left: 15.w, top: 20.h),
                            child: Container(
                              width: 343.w,
                              height: 46.h,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    gradient: LinearGradient(colors: [
                                      AppColors.but1Color,
                                      AppColors.but2Color
                                    ])),
                                child: ElevatedButton(
                                  onPressed: () {
                                    var contactController = Get.find<
                                        ContactController>();
                                    String fullName = nameController.text
                                        .trim();
                                    String fullAddress = addressController.text
                                        .trim();
                                    String email = emailController.text.trim();
                                    String phone = phoneController.text.trim();
                                    String addressId = fLocationController.text
                                        .trim();
                                    String district = districtController.text
                                        .trim();
                                    String city = cityController.text.trim();
                                    String state = stateController.text.trim();
                                    String addressName = addressNameController
                                        .text.trim();
                                    longitude:
                                    contactController.locationController.future!
                                        .data!.longitude!.toString();
                                    latitude:
                                    contactController.locationController.future!
                                        .data!.latitude!.toString();
                                    contactController.saveAddress(
                                        fullName,
                                        email,
                                        phone,
                                        fullAddress,
                                        addressId,
                                        addressName,
                                        city,
                                        state);
                                  },
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
                                            padding: EdgeInsets.only(left: 3.w),
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
                ):CircularProgressIndicator();
            }));
  }

}