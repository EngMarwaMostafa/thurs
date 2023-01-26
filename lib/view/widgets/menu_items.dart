import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';



class MenuItems extends StatelessWidget {
  final ImageIcon icon;
  final String text;
  const MenuItems({Key? key,
    required this.icon,
    required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      child: Row(
        children: [
          SizedBox(width:17.w),
          icon,
          SizedBox(width: 128.w,),
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
                  size: 18,),
              ),
            ),
          ),
          SizedBox(height: 15.h,),
          Divider(thickness: 2, color: AppColors.formColor),
        ],
      ),
    );
  }
}
