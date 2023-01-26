import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nib/view/pages/payment/thanks_screen.dart';
import '../../../utils/app_colors.dart';
import '../checkout/checkout_screen.dart';
import '../details/my_order_screen.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int radioIndex = 1;
  int radioPaymentIndex = 1;

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
          'Payment',
          style: TextStyle(
            fontSize: 22.sp,
            color: AppColors.brandColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 50.h,
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 125.w,
                  color: AppColors.appblackColor,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(Get.to(CheckoutScreen()));
                    },
                    child: ImageIcon(
                      AssetImage('assets/icons/location.png'),
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 125.w,
                  color: AppColors.appblackColor,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(MyOrderScreen());
                    },
                    child: ImageIcon(
                      AssetImage(
                        'assets/icons/check.png',
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 50.h,
                  width: 125.w,
                  decoration: BoxDecoration(
                      color: AppColors.appblackColor,
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          AppColors.but1Color,
                          AppColors.but2Color,
                        ],
                      )),
                  child: const ImageIcon(
                    AssetImage('assets/icons/credit.png'),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 23),
                child: Container(
                  height: 145.h,
                  width: 346.w,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.w, top: 15.h),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ImageIcon(AssetImage('assets/app/money.png')),
                                SizedBox(
                                  width: 11.h,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Cash on delivery',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12.sp,
                                        color: AppColors.cashColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      'SAR 12 will be added on COD',
                                      style: TextStyle(
                                        color: AppColors.willColor,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 100.w,
                                ),
                                Radio(
                                  groupValue: radioPaymentIndex,
                                  fillColor: MaterialStateColor.resolveWith(
                                          (states) => AppColors.mainColor),
                                  value: 1,
                                  onChanged: (int? value) {
                                    setState(() {
                                      radioPaymentIndex = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Divider(thickness: 1,color: AppColors.dividerColor,),
                            SizedBox(height: 12.h,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ImageIcon(AssetImage('assets/app/visa.png')),
                                SizedBox(
                                  width:16.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Visa/Master/MADA Card',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12.sp,
                                        color: AppColors.cashColor,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '*********789',
                                      style: TextStyle(
                                        color: AppColors.willColor,
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 115.w,
                                ),
                                Radio(
                                  groupValue: radioPaymentIndex,
                                  fillColor: MaterialStateColor.resolveWith(
                                          (states) => AppColors.mainColor),
                                  value: 2,
                                  onChanged: (int? value) {
                                    setState(() {
                                      radioPaymentIndex = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 35.h,),
          Padding(
            padding: EdgeInsets.only(left: 17.w,right: 17.w),
            child: Container(
              width: 341.w,
              height: 46.h,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    gradient: LinearGradient(
                        colors: [AppColors.but1Color, AppColors.but2Color])),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(ThanksScreen());
                  },
                  style:
                  ElevatedButton.styleFrom(primary: Colors.transparent),
                  child: Row(
                    children: [
                      SizedBox(width: 16.w,),
                      Text(
                        'CONTINUE PAYMENT',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 155.w,),
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
    );
  }
}
