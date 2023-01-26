
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../routes/router_helper.dart';
import '../../../utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    //  _loadResource();
    controller =
    AnimationController(vsync: this, duration: Duration(seconds: 2))
      ..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linearToEaseOut);
    Timer(Duration(seconds: 3), () =>  Get.toNamed(RouteHelper.getSignupScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
              scale: animation,
              child: Center(
                  child: Image.asset(
                    'assets/img/splash.jpg',
                  ))),
        ],
      ),
    );
  }
}
