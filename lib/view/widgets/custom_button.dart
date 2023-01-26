import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_colors.dart';



class RaisedButton extends StatelessWidget {
  const RaisedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
      ),
      width: 320.w,
      height: 48.h,
      child: Padding(
        padding: EdgeInsets.only(left: 14.w,top: 22.h),
        child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors:
                  [AppColors.but1Color,
                    AppColors.but2Color])),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(primary: Colors.transparent),
            child: Text('SIGN IN ',
              style: TextStyle(

              ),),
          ),
        ),
      ),
    );

  }
}
