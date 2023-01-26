import 'package:dio/dio.dart';
import 'package:nib/models/product_details_model.dart';

class ProductDetailsServices{

  final Dio _dio=Dio();

  final String baseurl = 'http://beautiheath.com/sub/eshop/api/buyers';

   fetchdetails() async{
    Response response=await _dio.get('$baseurl/product-details?productId=7&lang=ar');
    if(response.statusCode==200){
      print(response.data);
      return ProductDetailsModel.fromJson(response.data);
    }
    throw 'exception';
  }
}