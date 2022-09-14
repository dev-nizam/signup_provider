


import 'package:flutter/cupertino.dart';
import 'package:signup_provider/api/user_Api.dart';
import 'package:signup_provider/model/UserModel.dart';

class UserProvider with ChangeNotifier{
UserApi userApi= UserApi();
late UserModel userModel;
bool loading=false;
bool success=false;

signupProvider({required String username,required String password,required String email,})async{
  loading =true;
  userModel=await userApi.Signup(username: username, password: password, email: email);
  print("Loaded 1");
  loading=false;
  success=true;

  print("Loaded 2");
notifyListeners();
}


}