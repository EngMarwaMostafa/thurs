import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';

class ShopsItems extends StatelessWidget {
  const ShopsItems({Key? key,
    this.onTap,
    this.logo,
    this.name,
    this.description,
    this.favIcon,
  }) : super(key: key);

  final Function()? onTap;
  final Function()? favIcon;
  final String? logo;
  final String? name;
  final String? description;



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
                  logo!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(name!,
              style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 17.sp,
                color: AppColors.font1Color,
              ),),
            SizedBox(
              height: 5.h,
            ),
            RatingBar.builder(
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 12.sp,
              itemPadding: const EdgeInsets.symmetric(horizontal: 0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color:AppColors.but2Color,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
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
                  description!,
                  style: TextStyle(color: AppColors.mainColor, fontSize: 20.sp),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.h,
                  width: 100.w,
                  color: Colors.black,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.shopping_cart_rounded,
                        color: Colors.white,
                      ),
                      Text(
                        'Add to Cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}