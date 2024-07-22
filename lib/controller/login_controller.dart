import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoginController extends GetxController {
  bool loginShowPassword = true;
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

showPassword(){
  loginShowPassword = !loginShowPassword;
  update();
}
}