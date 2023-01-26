import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/app_colors.dart';

class SearchFormText extends StatelessWidget {
  const SearchFormText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      keyboardType: TextInputType.text,
      onChanged: (searchName) {},
      decoration: InputDecoration(
        fillColor: Colors.white,
        focusColor: Colors.red,
        prefixIcon: ImageIcon(
          const AssetImage('assets/app/search.png'),
        ),
        hintText: 'Search something',
        hintStyle: TextStyle(
          color: AppColors.font1Color,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.searchColor,
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
        focusedErrorBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.searchColor,
          ),
          borderRadius: BorderRadius.circular(5.r),
        ),
      ),
    );
  }
}
