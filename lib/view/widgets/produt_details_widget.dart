/*
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nib/controllers/product_details_controller.dart';
import '../../models/product_details_model.dart';
import '../../utils/app_colors.dart';
import '../pages/cart/shopping_cart_screen.dart';
import '../pages/categories/categories_screen.dart';
import '../pages/details/product_detail_screen.dart';

class Details extends StatelessWidget {
  final String? name;
  final String? description;
  final double? price;
  final String? quantity;
  final String? image;
  final String? size;
  final String? color;

  double? _ratingValue;
  final controller = Get.find<ProductDetailsController>();
 ProductDetailsModel? productDetailsModel;
 Details({super.key, this.name, this.description, this.price, this.quantity, this.image, this.size, this.color});


  @override
  Widget build(BuildContext context) {
    return
            Column(
      children: [
        Center(
          child: Container(
              color: Colors.white,
              width: double.infinity,
              height: 180.h,
              child:
               Image.network(image!),
              )
          ),
        DotsIndicator(
          dotsCount: 3,
          decorator: DotsDecorator(
            size: Size.square(9),
            activeColor: AppColors.mainColor,
            activeSize: Size(29, 5),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r)),
          ),
        ),
        SizedBox(
          height: 17.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
           name!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
              color: AppColors.font1Color,
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
      /*  Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Row(
            children: [
              RatingBar(
                  initialRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 15,
                  itemCount: 5,
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
                width: 10.w,
              ),
              Text(
                '1 Reviews | Write A Review',
                style:
                TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),*/
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Row(
            children: [
              Text(
                description!,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: AppColors.font1Color),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Row(
            children: [
              Text(
              quantity!,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: AppColors.font1Color),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
       Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Row(
            children: [
              Text(
                'Availablity: ',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: AppColors.font1Color),
              ),
              Text(
                'In Stock ',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: AppColors.mainColor),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Row(
            children: [
              Text(
                price!.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: AppColors.mainColor),
              ),
              Padding(
                padding: EdgeInsets.only(top: 23.h, left: 30.w),
                child: Container(
                  width: 180.w,
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
                        Get.to(ShoppingCartScreen());
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.transparent),
                      child: Row(
                        children: [
                          Text(
                            'ADD TO CART ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: AppColors.cartColor,
                            ),
                          ),
                          SizedBox(width: 27.w),
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
        ),
        SizedBox(
          height: 12.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 140.w),
          child: Container(
            width: 180.w,
            height: 48.h,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  gradient: LinearGradient(
                      colors: [AppColors.but1Color, AppColors.but2Color])),
              child: ElevatedButton(
                onPressed: () {},
                style:
                ElevatedButton.styleFrom(primary: Colors.transparent),
                child: Row(
                  children: [
                    Text(
                      'ADD TO WISHLIST ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: AppColors.cartColor,
                      ),
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
        SizedBox(
          height: 12.h,
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
            SizedBox(
              width: 18.w,
            ),
            Text(
              '01',
              style: TextStyle(fontSize: 22.sp, color: AppColors.oneColor),
            ),
            SizedBox(
              width: 18.w,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
            SizedBox(
              width: 20.w,
            ),
            Container(
              width: 180.w,
              height: 48.h,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    gradient: LinearGradient(colors: [
                      AppColors.but1Color,
                      AppColors.but2Color
                    ])),
                child: ElevatedButton(
                  onPressed: () {},
                  style:
                  ElevatedButton.styleFrom(primary: Colors.transparent),
                  child: Row(
                    children: [
                      Text(
                        'ADD TO COMPARE ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                          color: AppColors.cartColor,
                        ),
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
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 260.w, bottom: 14.h),
          child: Text(
            'Select Color',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: AppColors.font1Color),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 5.w),
          child: SizedBox(
            height: 40.h,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: 9,
              shrinkWrap: true,
              itemBuilder: (ctx, index) => Container(
                height: 38.h,
                width: 38.w,
                child: const CircleAvatar(),
                padding: EdgeInsets.all(5),
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w, top: 28.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Description',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Container(
                  width: 115.w,
                  height: 31.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.mainColor),
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      'Specification',
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              Text(
                'Additional Info',
                style: TextStyle(
                  fontSize: 15.sp,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 25.h, left: 10.w),
          child: Container(
            child: Container(
              color: Colors.white,
              height: 35.h,
              child: Row(
                children: [
                  Text(
                    'Department',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    'Men',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.font1Color),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Container(
            child: Container(
              height: 35.h,
              child: Row(
                children: [
                  Text(
                    'Band Color',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 100.w,
                  ),
                  Text(
                    'Silver',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.font1Color),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Container(
            child: Container(
              height: 35.h,
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    'Display Type',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Text(
                    'Analog',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.font1Color),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Container(
            child: Container(
              height: 35.h,
              child: Row(
                children: [
                  Text(
                    'Band Closure',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 85.w,
                  ),
                  Text(
                    'Buckle/Clasp',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.font1Color),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Container(
            child: Container(
              height: 35.h,
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    'Watch Movement',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 60.w,
                  ),
                  Text(
                    'Quartz',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.font1Color),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Container(
            child: Container(
              height: 35.h,
              child: Row(
                children: [
                  Text(
                    'Band Material',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 85.w,
                  ),
                  Text(
                    'Stainless Steel',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.font1Color),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Container(
            child: Container(
              height: 35.h,
              color: Colors.white,
              child: Row(
                children: [
                  Text(
                    'Model Number',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 80.w,
                  ),
                  Text(
                    'LTP-1274D-7ADF',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.font1Color),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 13.w, top: 17.h, bottom: 22.h),
          child: Row(
            children: [
              Text(
                'Similar Products',
                style: TextStyle(
                  fontSize: 17.sp,
                  color: AppColors.font1Color,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                width: 147.w,
              ),
              Container(
                width: 29.w,
                height: 29.h,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.but2Color,
                      size: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8.w,
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
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Row(
            children: [
              GestureDetector(
                onTap:(){
                  Get.to(ProductDetailScreen());
                },
                child: Container(
                  width: 162.w,
                  height: 273.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                  child: Padding(
                    padding:EdgeInsets.only(left: 5.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 142.h,width: 142.w,
                          child: Image(image:AssetImage('assets/img/one.png'),
                            fit: BoxFit.fill, ),),
                        SizedBox(height: 15.h,),
                        Text(
                          'Acer Aspire E',
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.font1Color,
                          ),
                        ),
                        SizedBox(height: 7.h,),
                        Row(
                          children: [
                          /*  RatingBar(
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
                                    empty:Icon(
                                      Icons.star_outline,
                                      color: AppColors.searchColor,
                                    )),
                                onRatingUpdate: (value) {
                                  setState(() {
                                    _ratingValue = value;
                                  });
                                }),*/
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              '(4.5)',
                              style: TextStyle(
                                  fontSize: 14, color: AppColors.sarColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 7.h,),
                        Row(
                          children: [
                            Text(
                              'SAR 270  ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.sp,
                                  color: AppColors.mainColor),
                            ),
                            SizedBox(width: 18.w,),
                            Text(
                              '|',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: AppColors.sarColor,
                              ),
                            ),
                            SizedBox(width: 18.w,),
                            RichText(
                              text: TextSpan(
                                text: 'SAR 300 ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: AppColors.sarColor,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.h,),
                        Row(
                          children: [
                            Icon(Icons.favorite,color: AppColors.but2Color,),
                            SizedBox(width: 25.w,),
                            Container(width: 110.w,height: 32.h,
                              color: Colors.black,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8.w),
                                child: Row(
                                  children: [
                                    Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                                    SizedBox(width: 8.w,),
                                    Text('Add to Cart',style: TextStyle(
                                      fontSize: 13.sp,fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 15.w,),
              Container(
                width: 162.w,
                height: 273.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.r),
                ),
                child: Padding(
                  padding:EdgeInsets.only(left: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 142.h,width: 142.w,
                        child: Image(image:AssetImage('assets/img/two.png'),
                          fit: BoxFit.fill, ),),
                      SizedBox(height: 15.h,),
                      Text(
                        'Acer Aspire E',
                        style: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.font1Color,
                        ),
                      ),
                      SizedBox(height: 7.h,),
                      Row(
                        children: [
                       /*   RatingBar(
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
                                  empty:Icon(
                                    Icons.star_outline,
                                    color: AppColors.searchColor,
                                  )),
                              onRatingUpdate: (value) {
                                setState(() {
                                  _ratingValue = value;
                                });
                              }),*/
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            '(4.5)',
                            style: TextStyle(
                                fontSize: 14, color: AppColors.sarColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 7.h,),
                      Row(
                        children: [
                          Text(
                            'SAR 270  ',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                                color: AppColors.mainColor),
                          ),
                          SizedBox(width: 18.w,),
                          Text(
                            '|',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: AppColors.sarColor,
                            ),
                          ),
                          SizedBox(width: 18.w,),
                          RichText(
                            text: TextSpan(
                              text: 'SAR 300 ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.sp,
                                  color: AppColors.sarColor,
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h,),
                      Row(
                        children: [
                          Icon(Icons.favorite,color: AppColors.but2Color,),
                          SizedBox(width: 25.w,),
                          Container(width: 110.w,height: 32.h,
                            color: Colors.black,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Row(
                                children: [
                                  Icon(Icons.shopping_cart_outlined,color: Colors.white,),
                                  SizedBox(width: 8.w,),
                                  Text('Add to Cart',style: TextStyle(
                                    fontSize: 13.sp,fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 23.h,),
        Padding(
          padding: EdgeInsets.only(left: 5.w,bottom: 19.h),
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
                  Get.to(CategoriesScreen());
                },
                style:
                ElevatedButton.styleFrom(primary: Colors.transparent),
                child: Row(
                  children: [
                    SizedBox(width: 120.w,),
                    Text(
                      'SEE ALL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 100.w,),
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
    );
  }
}
*/