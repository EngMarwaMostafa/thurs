
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../utils/app_constants.dart';
import '../api_client.dart';

class AuthRepo{
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences,
  });

  Future<Response> registration(String name,String email,String password)async{
    return await apiClient.postData(AppConstants.REGISTRATION_URI,
        {'name':name,'email':email, 'password':password});
  }

  bool userLoggedIn(){
    return sharedPreferences.containsKey(AppConstants.TOKEN);
  }

  Future<Response> login(String email, String password)async{
    return await apiClient.post(AppConstants.LOGIN_URI,
        { 'email': email,
          'password': password,
          'device_token':
          'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9iZWF1dGloZWF0aC5jb21cL3N1YlwvZXNob3BcL2FwaVwvYnV5ZXJzXC9sb2dpbiIsImlhdCI6MTY3MjI2ODg1OSwiZXhwIjoxNjcyMjcyNDU5LCJuYmYiOjE2NzIyNjg4NTksImp0aSI6IlU4RGFKZVcwQklKQmhSN0MiLCJzdWIiOjk4LCJwcnYiOiJhMDk0MDIzMzU0YTRkOTIyYTZiYzcxMGNkZmJlMWE3NGZiYTMwNGU2In0.uzSQ4faQQYZfMeaYZ2SKTvGmjjUOgiDOa0iC7AT68rg',
          'lang': 'ar'}
    );
  }

  Future<bool> saveUserToken(String token)async{
    apiClient.token=token;
    apiClient.updateHeader(token);
    return await sharedPreferences.setString(AppConstants.TOKEN, token);
  }

  Future<void> saveUserEmailAndPassword(String name,String email,String password)async{
    try{
      await sharedPreferences.setString(AppConstants.NAME, name);
      await sharedPreferences.setString(AppConstants.EMAIL, email);
      await sharedPreferences.setString(AppConstants.PASSWORD, password);
    }catch(e){
      throw e;
    }
  }

  bool clearSharedData(){
    sharedPreferences.remove(AppConstants.TOKEN);
    sharedPreferences.remove(AppConstants.PASSWORD);
    sharedPreferences.remove(AppConstants.NAME);
    apiClient.token='';
    apiClient.updateHeader('');
    return true;
  }
}