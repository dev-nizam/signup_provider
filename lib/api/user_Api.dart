

import 'dart:convert';

import 'package:http/http.dart';
import 'package:signup_provider/api/api_client.dart';
import 'package:signup_provider/model/UserModel.dart';

class UserApi{
  ApiClient apiClient=ApiClient();
Future<UserModel>Signup({required String username,required String password, required String email})async{
String path="signup?email=$email&password=$password&name=$username";
Response response=await apiClient.invokeApi(path: path, method: "POST", body: null);
return UserModel.fromJson(jsonDecode(response.body));

}
}