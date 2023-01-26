import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nib/controllers/cart_controller.dart';
import '../../../controllers/product_details_controller.dart';
import '../../../controllers/products_controller.dart';
import '../../../models/cart_model.dart';
import '../../../models/product_details_model.dart';
import '../../../models/products_model.dart';
import '../../../routes/router_helper.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/card_items.dart';
import '../cart/shopping_cart_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../categories/categories_screen.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String? name;
  final String? description;
  final String? price;
  final String? quantity;
  final String? image;
  final List<String>? size;
  final List<String>? color;

  ProductDetailsScreen(
      {super.key,
      this.name,
      this.description,
      this.price,
      this.quantity,
      this.image,
      this.size,
      this.color,
      this.cartModel});

  final CartModel? cartModel;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  double? _ratingValue;

  final detailsController = Get.put(ProductDetailsController());

  final cartController = Get.put(CartController());
  final controller = Get.put(ProductsController());

  Color currentColor = Colors.green;

  List<Color> currentColors = [];

  void changeColor(Color color) => setState(() => currentColor = color);

  void changeColors(List<Color> colors) =>
      setState(() => currentColors = colors);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => detailsController.load.value
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
              children: [
                Center(
                  child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 180.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: detailsController
                            .future!.data!.productImage!.length,
                        itemBuilder: (_, index) => Image.network(
                          detailsController
                              .future!.data!.productImage![index].image!,
                        ),
                      )),
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
                    detailsController.future!.data!.name!,
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
                SizedBox(height: 15.h),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Row(
                    children: [
                      Text(
                        'Price: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: AppColors.font1Color),
                      ),
                      Text(
                        detailsController.future!.data!.price!,
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
                        'quantity: ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: AppColors.font1Color),
                      ),
                      Text(
                        detailsController.future!.data!.quantity!,
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
                SizedBox(
                  height: 12.h,
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          cartController.addProductToCart(widget.cartModel!);
                        },
                        icon: Icon(Icons.remove_circle)),
                    SizedBox(
                      width: 18.w,
                    ),
                    Text(
                      '01',
                      style:
                          TextStyle(fontSize: 22.sp, color: AppColors.oneColor),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    IconButton(
                        onPressed: () {
                          cartController.removeOneProduct(widget.cartModel!);
                        },
                        icon: Icon(Icons.add_circle)),
                    SizedBox(
                      width: 20.w,
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
                    child: BlockPicker(
                      pickerColor: currentColor,
                      onColorChanged: changeColor,
                      layoutBuilder: (context, colors, child) {
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.all(5),
                            shrinkWrap: true,
                            itemCount:
                                detailsController.future!.data!.color!.length,
                            itemBuilder: (context, idx) {
                              return GestureDetector(
                                onTap: () {
                                  changeColor(colors[idx]);
                                },
                                child: Container(
                                  width: 38.w,
                                  height: 38.h,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: colors[idx],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              );
                            });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 270.w),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Text(
                    detailsController.future!.data!.description!,
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
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
                FutureBuilder<ProductsModel>(
                    future: controller.futureData,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return SizedBox(
                          height: 260.h,
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.data!.length,
                            itemBuilder: (ctx, index) => GestureDetector(
                              onTap: () {
                                Get.toNamed(
                                    RouteHelper.getProductDetailsScreen());
                              },
                              child: CardItems(
                                iconTap: () {},
                                productId: snapshot.data!.data![index].id,
                                price: snapshot.data!.data![index].price
                                    .toString(),
                                image: snapshot.data!.data![index].coverImg,
                                quantity: snapshot.data!.data![index].quantity
                                    .toString(),
                                name: snapshot.data!.data![index].names!.en,
                                favIcon: () {},
                                icon: Icon(Icons.favorite),
                              ),
                            ),
                          ),
                        );
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    }),
                SizedBox(
                  height: 23.h,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 5.w, bottom: 19.h),
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
                              Get.to(CategoriesScreen());
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 120.w,
                                ),
                                Text(
                                  'SEE ALL',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 100.w,
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
                        )))
              ],
            )),
    ));
  }
}
