


import 'package:flutter/cupertino.dart';
import 'package:signup_provider/api/user_Api.dart';
import 'package:signup_provider/model/UserModel.dart';

class UserProvider with ChangeNotifier{
UserApi userApi= UserApi();
late UserModel userModel;
bool loading=false;

signupProvider({required String username,required String password,required String email,})

}