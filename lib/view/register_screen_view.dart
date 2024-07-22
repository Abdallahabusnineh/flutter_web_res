import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_res/controller/register_controller.dart';
import 'package:flutter_web_res/home_screen.dart';
import 'package:flutter_web_res/view/login_screen_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../controller/login_controller.dart';
import '../core/common_widget/show_toast.dart';

class RegisterScreenView extends StatelessWidget {
   RegisterScreenView({super.key});
//  GlobalKey<FormState> controller.registerformkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<RegisterController>(
            init: RegisterController(),
            builder: (RegisterController controller) {
              return Form(
                key: controller.registerFormKey,
                child: FadeInUp(
                  duration: const Duration(milliseconds: 1000),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Register Now!', style: TextStyle(fontSize: 20.sp)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: TextFormField(
                          controller: controller.registerEmailController,
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'please enter valid email';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: TextFormField(
                          controller: controller.registerUserNameController,
                          decoration: InputDecoration(
                            labelText: "Username",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'please enter Username';
                            }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: TextFormField(

                          validator: (value) {
                            if(value!.isEmpty){
                              return 'please enter valid password';
                            }
                          },
                          controller: controller.registerPasswordController,
                          obscureText: controller.registerShowPassword,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            suffixIcon: controller.registerShowPassword?IconButton(onPressed: (){
                              controller.showPassword();
                            }, icon: Icon(Icons.visibility)):IconButton(onPressed: (){
                              controller.showPassword();
                            }, icon: Icon(Icons.visibility_off)),
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (controller.registerFormKey.currentState!.validate()) {
                       //Navigator.pushReplacementNamed(context, '/LoginScreenView');
                         Get.offAllNamed('/LoginScreenView');
                         showToast(text: 'Register Success', state: ToastState.SUCCESS);

                          }
                          controller.registerUserNameController.text='';
                          controller.registerEmailController.text='';
                          controller.registerPasswordController.text='';
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.blue),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );

  }
}
