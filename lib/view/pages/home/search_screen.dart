import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controllers/search_controller.dart';
import '../../../models/search_model.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/card_items.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 40.h,
                child: TextField(
                  onChanged: (v) {
                    controller.onFilter(v);
                  },
                  onSubmitted: (v) {
                    controller.onFilter(v);
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
              height: 100.h,
            ),
            Obx(() => controller.isSearch.value
                ? FutureBuilder<SearchModel>(
                    future: controller.data,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return SizedBox(
                            height: 260.h,
                            child: Obx(
                              () => ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.isSearch.value
                                    ? snapshot.data!.data!.length
                                    : 0,
                                itemBuilder: (ctx, index) => CardItems(
                                  iconTap: () {},
                                  onTap: () {},
                                  productId: snapshot.data!.data![index].id,
                                  price: controller.isSearch.value
                                      ? snapshot.data!.data![index].price
                                          .toString()
                                      : null,
                                  image: controller.isSearch.value
                                      ? snapshot.data!.data![index].coverImg
                                      : null,
                                  quantity: controller.isSearch.value
                                      ? snapshot.data!.data![index].quantity
                                          .toString()
                                      : null,
                                  name: controller.isSearch.value
                                      ? snapshot.data!.data![index].names!.en
                                      : null,
                                  favIcon: () {},
                                  icon: Icon(Icons.favorite),
                                ),
                              ),
                            ));
                      } else {
                        return const Center(child: CircularProgressIndicator());
                      }
                    })
                : Container()),
          ],
        ),
      ),
    );
  }
}
