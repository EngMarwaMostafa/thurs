import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  bool isObsecure;
  bool maxLines;
  AppTextField({Key? key,
    required this.textEditingController,
    required this.hintText,
    this.isObsecure=false,
    this.maxLines=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left:15.w,right: 15.w,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: TextField(
        maxLines: maxLines?3:1,
        obscureText: isObsecure?true:false,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
            borderSide: BorderSide(
              width: 1.0,
              color: AppColors.formColor,
            ),
          ),
          // border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
      ),
    );
  }
}
