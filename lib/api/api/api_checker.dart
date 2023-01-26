import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../base/show_ustom_bar.dart';
import '../../routes/router_helper.dart';

class ApiChecker{
  static void checkApi(Response response){
    if(response.statusCode==401){
      Get.offNamed(RouteHelper.getLoginPage());
    }else{
      showCustomSnackbar(response.statusText!);
    }
  }
}