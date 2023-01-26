import 'package:dio/dio.dart';

import '../models/contact_model.dart';

class ContactService{
  final Dio _dio= Dio();
  final String baseurl = 'http://beautiheath.com/sub/eshop/api/buyers';

  Future<ContactModel?> contact(
      String phone,String email,String longitude,String latitude
      )async{
    Response response=await _dio.get("$baseurl/contactinfo");
    if(response.statusCode==200){
      return ContactModel.fromJson(response.data);
    }
  }

}