import 'package:get/get_connect/http/src/response/response.dart';
import 'package:nib/api/api/api_client.dart';
import 'package:nib/utils/app_constants.dart';

class UserRepo{
  final ApiClient apiClient;
  UserRepo({required this.apiClient});

  Future<Response> getUserInfo()async{
    return await apiClient.getData(AppConstants.USER_INFO_URI);
  }
}