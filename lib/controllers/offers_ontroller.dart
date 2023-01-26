import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../models/allOffers_model.dart';
import '../services/offers_service.dart';


class OffersController extends GetxController{
  final _services = OffersServices();
  Future<AllOffersModel>? future;

  @override
  Future<void> onInit()async{
    super.onInit();
    future=_services.fetchShops();
  }
}