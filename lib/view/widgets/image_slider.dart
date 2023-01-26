
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSliders extends StatefulWidget {

  String imageUrl;


  ImageSliders({
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  @override
  _ImageSlidersState createState() => _ImageSlidersState();
}

class _ImageSlidersState extends State<ImageSliders> {
  CarouselController carouselController = CarouselController();


  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider.builder(
            itemCount: 3,
            carouselController: carouselController,
            options: CarouselOptions(
                height: 278.h,
                autoPlay: true,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlayInterval: const Duration(seconds: 2),
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPage = index;
                  });
                }),
            itemBuilder: (context, index, realIndex) {
              return Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.imageUrl),
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }
        ),
      ],
    );
  }
}