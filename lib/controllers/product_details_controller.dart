import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nib/models/product_details_model.dart';

import '../services/product_details_service.dart';

class ProductDetailsController extends GetxController {
  final _services = ProductDetailsServices();
  ProductDetailsModel? future;
  final load = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    load.value = true;
    future = await _services.fetchdetails();
    print(future);
    load.value = false;
  }
}
