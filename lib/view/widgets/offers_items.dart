import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key,
    this.image,
    this.price,
    this.quantity,
    this.name,
    this.desc,
    this.modelN,
   this.onTap,
  }) : super(key: key);


  final Function()? onTap;
  final String? image;
  final String? modelN;
  final String? desc;
  final String? price;
  final String? quantity;
  final String? name;



  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 100.h,
              width: 150.w,
              child: Align(
                alignment: Alignment.center,
                child: Image.network(
                  image!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              name!,
              style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 17.sp,
                color: AppColors.font1Color,
              ),),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'SAR',
                  style: TextStyle(color: AppColors.mainColor, fontSize: 20.sp),
                ),
                SizedBox(width: 5.w,),
                Text(
                  price!.toString(),
                  style: TextStyle(color: AppColors.mainColor, fontSize: 20.sp),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Availability:',
                  style: TextStyle(color: AppColors.font1Color, fontSize: 20.sp),
                ),
                SizedBox(width: 5.w,),
                Text(
                  quantity!.toString(),
                  style: TextStyle(color: AppColors.mainColor, fontSize: 20.sp),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}