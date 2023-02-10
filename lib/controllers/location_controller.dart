import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nib/models/contact_model.dart';
import 'package:nib/services/location_services.dart';

class LocationController extends GetxController {
  final _services = LocationServices();
  ContactModel? future;
  final load = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    load.value = true;
    future = await _services.fetchLocation();
    print(future);
    load.value = false;
  }
}