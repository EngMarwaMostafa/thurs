import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nib/view/pages/details/product_detail_screen.dart';
import '../../../controllers/products_controller.dart';
import '../../../models/products_model.dart';
import '../../../routes/router_helper.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/offers_items.dart';


class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(ProductsController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Text(
          'OFFERS',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          FutureBuilder<ProductsModel>(
              future: controller.futureData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 260.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.data!.length,
                        itemBuilder: (ctx, index) =>  GestureDetector(
                          onTap: () {
                            Get.toNamed(RouteHelper.getProductDetailsScreen());
                          },
                          child: Offers(
                                price: snapshot.data!.data![index].price.toString(),
                                image: snapshot.data!.data![index].coverImg,
                                quantity: snapshot.data!.data![index].quantity.toString(),
                                name: snapshot.data!.data![index].names!.en,
                                desc: snapshot.data!.data![index].description,
                              ),
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
    );
  }
}
