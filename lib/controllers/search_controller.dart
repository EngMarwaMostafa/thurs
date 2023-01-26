import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


import '../models/products_model.dart';
import '../models/search_model.dart';
import '../services/products_services.dart';

class SearchController extends GetxController{
  final _services=ProductsServices();
  final isSearch=false.obs;
  Future<SearchModel>? data;

  onFilter(String label){
    isSearch.value=true;
    data=_services.searchData(label);
  }
}