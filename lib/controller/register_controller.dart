import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class RegisterController extends GetxController {

  bool registerShowPassword = true;
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();


  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerUserNameController = TextEditingController();

showPassword(){
  registerShowPassword = !registerShowPassword;
  update();
}
}