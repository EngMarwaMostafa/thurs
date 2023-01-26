import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nib/routes/router_helper.dart';
import 'package:nib/view/pages/auth/login_screen.dart';
import 'package:nib/view/pages/home/main_home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  var token = prefs.getString('token');
  await dep.init();
  runApp(ScreenUtilInit(
    designSize: const Size(375, 667),
    splitScreenMode: true,
    minTextAdapt: true,
    builder: (context, child) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
     // home: token == null ? const LoginScreen() : const MainHomeScreen(),
      // initialRoute:token==null? RouteHelper.register:,
      initialRoute: RouteHelper.splashPage,
      getPages: RouteHelper.routes,
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        // home:LoginScreen(),
        initialRoute: RouteHelper.register,
        getPages: RouteHelper.routes,
      ),
    );
  }
}
