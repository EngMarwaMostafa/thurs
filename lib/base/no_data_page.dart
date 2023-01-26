import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoDataPage extends StatelessWidget {
  final String text;
  final String imgPath;
  const NoDataPage ({Key? key,required this.text,
    this.imgPath='assets/app/empty.png'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:CrossAxisAlignment.stretch ,
      children: [
        Image.asset(
          imgPath,
          height:250.h,
         width:250.w,
        ),
        SizedBox(height: 20.h,),
        Text(
          text,
          style: TextStyle(
            fontSize: 25.sp,
            color: Theme.of(context).disabledColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}