import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleItems extends StatelessWidget {
  const CircleItems({Key? key, this.image, this.label}) : super(key: key);
  final String? image;
  final String? label;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60.h,
            width: 60.w,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.network(image!,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.contain),
          ),
          Text(label!),
        ],
      ),
    );
  }
}