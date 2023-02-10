
import 'package:shared_preferences/shared_preferences.dart';
import '../../../utils/app_constants.dart';
import '../api_client.dart';

class ContactRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;

  ContactRepo({required this.apiClient,
    required this.sharedPreferences});


  Future<void>saveUserAddress(String fullName, String email, String phone,String fullAddress,String addressId,String addressName,String city,String state) async{
    try{
      await sharedPreferences.setString(AppConstants.FULLNAME, fullName);
      await sharedPreferences.setString(AppConstants.USEREMAIL, email);
      await sharedPreferences.setString(AppConstants.USERPHONE, phone);
      await sharedPreferences.setString(AppConstants.FULLADDRESS, fullAddress);
      await sharedPreferences.setString(AppConstants.ADDRESSID, addressId);
      await sharedPreferences.setString(AppConstants.ADDRESSNAME, addressName);
      await sharedPreferences.setString(AppConstants.CITY, city);
      await sharedPreferences.setString(AppConstants.STATE, state);
    }catch(e){
      throw e;
    }
  }
}