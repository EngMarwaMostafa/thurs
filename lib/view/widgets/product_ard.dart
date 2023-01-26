import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';



class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 132.h,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: AppColors.shadowColor,
          blurRadius: 15.r,
        ),
      ]),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.r),
        ),
        color: Colors.white,
        child: Row(
          children: [
            Container(
              width: 118.w,
              height: 118.h,
              child: const Image(
                image: AssetImage(
                  'assets/img/detail.png',
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Acer Aspire E',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17.sp,
                    color: AppColors.font1Color,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    RatingBar(
                        initialRating: 4,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 12,
                        unratedColor: AppColors.searchColor,
                        ratingWidget: RatingWidget(
                            full: Icon(
                              Icons.star,
                              color: AppColors.but2Color,
                            ),
                            half: Icon(
                              Icons.star_half,
                              color: AppColors.but2Color,
                            ),
                            empty: const Icon(
                              Icons.star_outline,
                              color: Colors.orange,
                            )),
                        onRatingUpdate: (value) {
                          setState(() {
                            _ratingValue = value;
                          });
                        }),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '(4.5)',
                      style: TextStyle(fontSize: 14.sp, color: AppColors.sarColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Text(
                      'SAR 270  ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: AppColors.mainColor),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '| SAR 300 ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: AppColors.sarColor,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage('assets/app/heart.png'),
                    ),
                    /*   Container(
                      width: 110.w,
                      height: 32.h,
                      color: AppColors.brandColor,
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8.w,
                            ),
                            const Text(
                              'Add yo Cart',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),*/
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
