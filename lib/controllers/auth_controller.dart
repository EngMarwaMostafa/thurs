import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nib/models/user_model.dart';
import 'package:nib/view/pages/auth/login_screen.dart';
import 'package:nib/view/pages/home/main_home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../api/api/repo/auth_repo.dart';


class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;

  AuthController({required this.authRepo});

  final dio = Dio();
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  registration(String name, String email, String password) async {
    _isLoading = true;
    update();
    final response = await dio.post(
        "http://beautiheath.com/sub/eshop/api/buyers/register",
        data: {"name": name, "email": email, "password": password});
    print(response.data);
    if (response.statusCode == 200) {
      Get.offAll(() => const LoginScreen());
      print(response.data);
    } else {
      print(response.data);
    }
    _isLoading = true;
    update();
  }

  login(String email, String password) async {
    final sharedPreferences = await SharedPreferences.getInstance();

    final response = await dio
        .post("http://beautiheath.com/sub/eshop/api/buyers/login",
        data: {
      'email': email,
      'password': password,
      'device_token': 'fwfwfrw',
      'lang': 'sw'
    });
    if (response.statusCode == 200) {
      Get.offAll(() => const MainHomeScreen());
      print(response.data);
      UserModel userModel = UserModel.fromJson(response.data);
      sharedPreferences.setString("token", userModel.data!.token!);
    } else {}
  }

  void saveUserEmailAndPassword(String name, String email, String password) {
    authRepo.saveUserEmailAndPassword(name, email, password);
  }

  bool userLoggedIn() {
    return authRepo.userLoggedIn();
  }

  bool clearSharedData() {
    return authRepo.clearSharedData();
  }
}
