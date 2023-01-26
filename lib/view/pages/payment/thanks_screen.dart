import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors.dart';

class ThanksScreen extends StatelessWidget {
  const ThanksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 37.h,),
              Text('THANK YOU',style: TextStyle(
                fontSize: 38.sp,fontWeight: FontWeight.bold,
                color: AppColors.fontColor,
              ),),
              SizedBox(height: 9.h,),
              Text('FOR YOUR ORDER',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 19.sp,
                color: AppColors.orderColor,
              ),),
              SizedBox(height: 13.h,),
              Text('Order number:#S124535',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15.sp,
                color: AppColors.orderColor,
              ),),
              SizedBox(height: 13.h,),
              Image(image:const AssetImage('assets/img/thank.png')),
              SizedBox(height: 26.h,),
              Text('ESTIMATED DELIVERY',style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
                color: AppColors.filterColor,
              ),),
              SizedBox(height:10.h,),
              Text('Apr 30, 2020',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19.sp,
                color: AppColors.orderColor,
              ),),
              SizedBox(height: 28.h,),
              Container(
                width: 341.w,
                height: 46.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    gradient: LinearGradient(colors:
                    [
                      AppColors.but1Color,
                      AppColors.but2Color
                    ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent),
                    child: Text(
                      'TRACK YOUR ORDER HERE ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h,),
              Text('or',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19.sp,
                color: AppColors.orderColor,
              ),),
              SizedBox(height: 18.h,),
              Container(
                width: 341.w,
                height: 46.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    gradient: LinearGradient(colors:
                    [
                      AppColors.mainColor,
                      AppColors.fontColor
                    ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent),
                    child: Text(
                      'TRACK YOUR ORDER HERE ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 33.h,),
            ],
          ),
        ),
      ),
    );
  }
}
