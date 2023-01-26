import 'dart:ffi';

import 'package:shared_preferences/shared_preferences.dart';
import '../../../utils/app_constants.dart';
import '../api_client.dart';

class ContactRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  ContactRepo({required this.apiClient,
    required this.sharedPreferences});

  String getUserAddress(){
    return sharedPreferences.getString(AppConstants.USER_ADDRESS)??'';
  }

  Future<bool> saveUserAddress(String address)async{
    return await sharedPreferences.setString(AppConstants.USER_ADDRESS, address);
  }


}