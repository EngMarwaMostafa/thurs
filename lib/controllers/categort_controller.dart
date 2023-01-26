import 'package:get/get.dart';
import '../models/categories_model.dart';
import '../services/products_services.dart';


class CategoryController extends GetxController{
  final _services = ProductsServices();
  Future<CategoriesModel>? future;

  @override
  Future<void> onInit()async{
    super.onInit();
    future=_services.getCategory();
  }
}