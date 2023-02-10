
import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nib/controllers/location_controller.dart';
import 'package:nib/models/contact_model.dart';
import '../api/api/repo/contat_repo.dart';
import '../view/pages/auth/account_detail_screen.dart';

class ContactController extends GetxController implements GetxService {
final ContactRepo contactRepo;

  ContactController(this.contactRepo);

final locationController = Get.put(LocationController());

final dio = Dio();
bool _isLoading = false;

bool get isLoading => _isLoading;


late GoogleMapController _mapController;

GoogleMapController get mapController => _mapController;

saveAddress(String fullName, String email, String phone,String fullAddress,String addressId,String addressName,String city,String state) async {
  _isLoading = true;
  update();
  final response = await dio.post(
      "http://beautiheath.com/sub/eshop/api/buyers/add-adress",
      data: {"addressId": addressId, "address_name": addressName, "full_address": fullAddress,
        'full_name':fullName,'email':email,'phone':phone,'city':city,'state':state });
  print(response.data);
  if (response.statusCode == 200) {
    Get.offAll(() => const AccountDetailScreen());
    print(response.data);
  } else {
    print(response.data);
  }
  _isLoading = true;
  update();
}

 Future<Position> getUserCurrentLocation() async {
  await Geolocator.requestPermission().then((value){
  }).onError((error, stackTrace) async {
    await Geolocator.requestPermission();
    print("ERROR"+error.toString());
  });
  return await Geolocator.getCurrentPosition();
}

void saveUserAddress(String fullName, String email, String phone,String fullAddress,String addressId,String addressName,String city,String state) {
 contactRepo.saveUserAddress(fullName, email, phone, fullAddress, addressId, addressName, city, state);
}

}

