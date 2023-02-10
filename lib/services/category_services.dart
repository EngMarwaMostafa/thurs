import 'package:dio/dio.dart';

import '../models/categories_model.dart';

class CategoryServices{

  final Dio _dio=Dio();

  final String baseurl = 'http://beautiheath.com/sub/eshop/api/buyers';

  Future<CategoriesModel> getCategory() async{
    Response response=await _dio.get('$baseurl/categotries?lang=ar');
    if(response.statusCode==200){
      print(response.data);
      return CategoriesModel.fromJson(response.data);
    }
    throw 'exception';
  }
}