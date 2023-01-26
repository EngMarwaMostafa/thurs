import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utils/app_colors.dart';
import '../../widgets/product_ard.dart';



class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:Icon(Icons.arrow_back_ios,color: AppColors.mainColor,),
        title: Text('Total Products (200)',
          style: TextStyle(
            fontSize: 24.sp,color: AppColors.brandColor,
            fontWeight: FontWeight.bold,
          ),),
      ),
      body: Column(
        children: [
          Container(
            height:45.h,
            color: AppColors.containerColor,
            child: Row(
              children: [
                SizedBox(width: 15.w,),
                const ImageIcon(AssetImage('assets/icons/grid.png',),color: Colors.white,),
                SizedBox(width: 10.w,),
                ImageIcon(const AssetImage('assets/icons/list.png'),color: AppColors.but1Color,),
                SizedBox(width: 270.w,),
                ImageIcon(const AssetImage('assets/icons/filter.png'),color: AppColors.filterColor,),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Container(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  ListView.builder(
                    physics: ClampingScrollPhysics(),
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) =>ProductCard(),
                    scrollDirection: Axis.vertical,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
