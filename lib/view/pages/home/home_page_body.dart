import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nib/models/wislist_model.dart';
import 'package:nib/routes/router_helper.dart';
import 'package:nib/view/pages/home/search_screen.dart';
import '../../../controllers/products_controller.dart';
import '../../../models/categories_model.dart';
import '../../../models/products_model.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/card_items.dart';
import '../../widgets/circle_items.dart';
import '../cart/shopping_cart_screen.dart';
import '../details/product_detail_screen.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductsController());
    final WishlistModel? wishlistModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Text(
          'ALHAZAZ',
          style: TextStyle(
            fontSize: 20.sp,
            color: Colors.white,
          ),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 22.w),
            child: Row(
              children: [
                SizedBox(
                  width: 22.w,
                ),
                Obx(
                  () => Badge(
                    position: BadgePosition.topEnd(top: 12, end: 3),
                    animationDuration: Duration(milliseconds: 300),
                    animationType: BadgeAnimationType.slide,
                    badgeContent: Text(
            controller.cartController.totalItems.toString(),
                   //   '20',
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                      Get.to(() => ShoppingCartScreen());
                      },
                      child: const ImageIcon(
                        AssetImage(
                          'assets/app/cart.png',
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Container(
              color: AppColors.backColor,
              height: 60,
              child: Container(
                margin: EdgeInsets.only(
                    top: 7.h, left: 15.w, right: 14.w, bottom: 7.h),
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.r),
                  ),
                ),
                child: TextField(
                  onTap: () {
                    Get.to(() => SearchScreen());
                  },
                  decoration: InputDecoration(
                    hintText: "Search Something",
                    prefixIcon: ImageIcon(
                      AssetImage(
                        'assets/app/search.png',
                      ),
                      color: AppColors.font1Color,
                    ),
                    hintStyle: TextStyle(
                      color: AppColors.font1Color,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            FutureBuilder<CategoriesModel>(
                future: controller.category,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SizedBox(
                      height: 120.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: snapshot.data!.data!.length,
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) => GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteHelper.getProductDetailsScreen());
                          },
                          child: CircleItems(
                            image: snapshot.data!.data![index].icon,
                            label: snapshot.data!.data![index].name!.en,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
            Padding(
              padding: EdgeInsets.only(top: 21.h, bottom: 10.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.w, top: 15.h),
                    child: Text(
                      'National Day Products',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.font1Color,
                      ),
                    ),
                  ),
                  SizedBox(width: 120.w),
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
                    return Padding(
                      padding: EdgeInsets.only(left: 2.w),
                      child: SizedBox(
                        height: 300.h,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: (ctx, index) => GestureDetector(
                            onTap: () {
                              Get.to(() => ProductDetailsScreen(
                                    quantity:
                                        snapshot.data!.data![index].quantity,
                                    name: snapshot.data!.data![index].name,
                                    image: snapshot.data!.data![index].coverImg,
                                    price: snapshot.data!.data![index].price,
                                    color: snapshot.data!.data![index].color,
                                    size: snapshot.data!.data![index].size,
                                    description:
                                        snapshot.data!.data![index].description,
                                  ));
                            },
                            child: CardItems(
                              iconTap: () {
                                print("fff");
                              },
                              productId: snapshot.data!.data![index].id,
                              price:
                                  snapshot.data!.data![index].price.toString(),
                              image: snapshot.data!.data![index].coverImg,
                              quantity: snapshot.data!.data![index].quantity,
                              name: snapshot.data!.data![index].name!,
                              favIcon: () {
                                snapshot.data!.data![index].wishlist.toString();
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
            Padding(
              padding: EdgeInsets.only(
                  left: 8.0.w, right: 8.w, top: 8.h, bottom: 8.h),
              child: Row(
                children: [
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Most Viewed Products',
                    style: TextStyle(
                        color: const Color(0xff515C6F),
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 120.w),
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
                            Get.toNamed(RouteHelper.getProductDetailsScreen());
                          },
                          child: CardItems(
                            iconTap: () {},
                            productId: snapshot.data!.data![index].id,
                            price: snapshot.data!.data![index].price.toString(),
                            image: snapshot.data!.data![index].coverImg,
                            quantity:
                                snapshot.data!.data![index].quantity.toString(),
                            name: snapshot.data!.data![index].names!.en,
                            favIcon: () {
                              snapshot.data!.data![index].wishlist.toString();
                            },
                            //icon: Icon(Icons.favorite),
                            // controller.wishlistController.addToWish({int? productId}),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }),
          ],
        ),
      ),
    );
  }
}
