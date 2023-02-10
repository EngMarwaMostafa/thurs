import 'package:dio/dio.dart';
import 'package:nib/models/contact_model.dart';

class LocationServices{

  final Dio _dio=Dio();

  final String baseurl = 'http://beautiheath.com/sub/eshop/api/buyers';

  fetchLocation() async{
    Response response=await _dio.get('$baseurl/add-adress');
    if(response.statusCode==200){
      print(response.data);
      return ContactModel.fromJson(response.data);
    }
    throw 'exception';
  }
}