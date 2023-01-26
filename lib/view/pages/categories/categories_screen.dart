import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../controllers/categort_controller.dart';
import '../../../models/categories_model.dart';
import '../../../utils/app_colors.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(CategoryController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 82.h,
              color: AppColors.mainColor,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 50.w,
                  top: 20.h,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 122.w,
                      height: 35.h,
                      child: const Text(
                        'CATEGORIES',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: AppColors.but2Color,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            FutureBuilder<CategoriesModel>(
                future:controller.future,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data!.data!.length,
                        physics: const ClampingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (ctx, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Container(
                                  height: 65.h,
                                  width: 65.w,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  child: Image.network(
                                      snapshot.data!.data![index].icon!,
                                      height: double.infinity,
                                      width: double.infinity,
                                      fit: BoxFit.contain),
                                ),
                                title: Text(
                                  "${snapshot.data!.data![index].name!.en}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17.sp,
                                    color: const Color(0xff515C6F),
                                  ),
                                ),
                                trailing: const Icon(
                                    Icons.arrow_forward_ios_rounded),
                              ),
                              const Divider(),
                            ],
                          ),
                        ));
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



