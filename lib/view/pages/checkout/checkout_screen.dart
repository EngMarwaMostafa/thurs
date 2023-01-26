
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../utils/app_colors.dart';
import '../details/my_order_screen.dart';
import '../payment/payment_screen.dart';
import 'new_address_screen.dart';


class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  int radioIndex = 1;
  int radioCheckIndex = 1;

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
          },
          icon: Icon(Icons.arrow_back_ios,),
        ),
        title: Text(
          'Checkout',
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
                    child: ImageIcon(AssetImage('assets/icons/location.png')),
                  ),
                  Container(
                    width: 250.w,
                    height: 50.h,
                    color: AppColors.appblackColor,
                    child:  Row(
                      children: [
                        SizedBox(width: 50.w,),
                        GestureDetector(
                          onTap: (){
                            Get.to(MyOrderScreen());
                          },
                          child: ImageIcon(
                            AssetImage('assets/icons/check.png',),
                            color: Colors.white,),
                        ),
                        SizedBox(width:126.w),
                        GestureDetector(
                            onTap: (){
                              Get.to(PaymentScreen());
                            },
                            child: ImageIcon(AssetImage('assets/icons/credit.png'),color: Colors.white,)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 34.h,),
            Padding(
              padding: EdgeInsets.only(left: 5.w,),
              child: Container(
                width: 340.w,
                height: 38.h,
                child: Row(
                  children: [
                    Container(
                      width: 170.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.only(
                          topLeft:Radius.circular(10.r),
                          bottomLeft: Radius.circular(10.r),),
                      ),
                      alignment: Alignment.center,
                      child: Text('Saved Address',
                        style: TextStyle(
                          fontSize:14.sp,
                          color: Colors.white,
                        ),),),
                    Container(
                      width: 170.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.mainColor),
                        borderRadius:BorderRadius.only(
                          topRight:Radius.circular(10.r),
                          bottomRight: Radius.circular(10.r),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: (){
                          //   Get.to(NewAddressScreen());
                        },
                        child: Text('New address',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color:AppColors.orderColor,
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 26.h,),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Container(
                width: 340.w,
                height: 135.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Column(
                  children:  [
                    Row(
                      children: [
                        SizedBox(width: 12.w,),
                        Text('Home',style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.mainColor,
                        ),),
                        SizedBox(width: 230.w,),
                        Radio(
                          groupValue: radioCheckIndex,
                          fillColor: MaterialStateColor.resolveWith(
                                  (states) => AppColors.mainColor),
                          value: 1,
                          onChanged: (int? value) {
                            setState(() {
                              radioCheckIndex = value!;
                            });
                          },
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 192.w),
                      child: Text('ASRAF ALmASHAHRI',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.font1Color,
                      ),
                      ),
                    ),
                    SizedBox(height: 7.h,),
                    Padding(
                      padding: EdgeInsets.only(right: 246.w),
                      child: Text('Saudi Arabia',style: TextStyle(
                          fontSize: 14.sp,color: AppColors.font1Color
                      ),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:7.w),
                          child: Text('Riyadh',style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.mainColor,
                          ),),
                        ),
                        SizedBox(width: 107.w,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 70.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              gradient: LinearGradient(
                                  colors: [AppColors.but1Color, AppColors.but2Color]),
                            ),
                            child: Text('EDIT',style: TextStyle(
                              fontSize: 14.sp,fontWeight: FontWeight.w600,
                            ),),
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(width: 9.w,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 70.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              color: AppColors.brandColor,
                            ),
                            child: Text('DELETE',style: TextStyle(
                              fontSize: 14.sp,fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),),
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17.h,),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Container(
                width: 340.w,
                height: 135.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Column(
                  children:  [
                    Row(
                      children: [
                        SizedBox(width: 12.w,),
                        Text('Office',style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.mainColor,
                        ),),
                        SizedBox(width: 230.w,),
                        Radio(
                          groupValue: radioCheckIndex,
                          fillColor: MaterialStateColor.resolveWith(
                                  (states) => AppColors.mainColor),
                          value: 2,
                          onChanged: (int? value) {
                            setState(() {
                              radioCheckIndex = value!;
                            });
                          },
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 192.w),
                      child: Text('ASRAF ALmASHAHRI',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.font1Color,
                      ),
                      ),
                    ),
                    SizedBox(height: 7.h,),
                    Padding(
                      padding: EdgeInsets.only(right: 246.w),
                      child: Text('Saudi Arabia',style: TextStyle(
                          fontSize: 14.sp,color: AppColors.font1Color
                      ),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:7.w),
                          child: Text('Riyadh',style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.mainColor,
                          ),),
                        ),
                        SizedBox(width: 107.w,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 70.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              gradient: LinearGradient(
                                  colors: [AppColors.but1Color, AppColors.but2Color]),
                            ),
                            child: Text('EDIT',style: TextStyle(
                              fontSize: 14.sp,fontWeight: FontWeight.w600,
                            ),),
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(width: 9.w,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 70.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              color: AppColors.brandColor,
                            ),
                            child: Text('DELETE',style: TextStyle(
                              fontSize: 14.sp,fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),),
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 17.h,),
            Padding(
              padding: EdgeInsets.only(left: 16.w,right: 19.w),
              child: Container(
                width: 340.w,
                height: 135.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Column(
                  children:  [
                    Row(
                      children: [
                        SizedBox(width: 12.w,),
                        Text('New Location',style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.mainColor,
                        ),),
                        SizedBox(width: 170.w,),
                        Radio(
                          groupValue: radioCheckIndex,
                          fillColor: MaterialStateColor.resolveWith(
                                  (states) => AppColors.mainColor),
                          value: 3,
                          onChanged: (int? value) {
                            setState(() {
                              radioCheckIndex = value!;
                            });
                          },
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 192.w),
                      child: Text('ASRAF ALmASHAHRI',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.font1Color,
                      ),
                      ),
                    ),
                    SizedBox(height: 7.h,),
                    Padding(
                      padding: EdgeInsets.only(right: 246.w),
                      child: Text('Saudi Arabia',style: TextStyle(
                          fontSize: 14.sp,color: AppColors.font1Color
                      ),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:7.w),
                          child: Text('Riyadh',style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColors.mainColor,
                          ),),
                        ),
                        SizedBox(width: 107.w,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 70.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              gradient: LinearGradient(
                                  colors: [AppColors.but1Color, AppColors.but2Color]),
                            ),
                            child: Text('EDIT',style: TextStyle(
                              fontSize: 14.sp,fontWeight: FontWeight.w600,
                            ),),
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(width: 9.w,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            width: 70.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3.r),
                              color: AppColors.brandColor,
                            ),
                            child: Text('DELETE',style: TextStyle(
                              fontSize: 14.sp,fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),),
                            alignment: Alignment.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w,top: 20.h),
              child: Container(
                width: 343.w,
                height: 46.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      gradient: LinearGradient(
                          colors: [AppColors.but1Color, AppColors.but2Color])),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(PaymentScreen());
                    },
                    style:
                    ElevatedButton.styleFrom(primary: Colors.transparent),
                    child: Row(
                      children: [
                        SizedBox(width: 20.w,),
                        GestureDetector(
                          onTap: (){
                            Get.to(PaymentScreen());
                          },
                          child: Text(
                            'PROCEED TO PAY',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: AppColors.cartColor,
                            ),
                          ),
                        ),
                        SizedBox(width: 173.w,),
                        Container(
                          width: 29.w,
                          height: 29.h,
                          child: CircleAvatar(
                            backgroundColor:Colors.black,
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
