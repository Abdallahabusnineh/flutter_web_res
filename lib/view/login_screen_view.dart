import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_res/controller/login_controller.dart';
import 'package:flutter_web_res/core/common_widget/show_toast.dart';
import 'package:flutter_web_res/view/register_screen_view.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../home_screen.dart';

class LoginScreenView extends StatelessWidget {
   LoginScreenView({Key? key}) : super(key: key);
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<LoginController>(
            init: LoginController(),
            builder: (LoginController controller) {
              return Form(
                key: loginFormKey,
                child: FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome Back!', style: TextStyle(fontSize: 20.sp,color: Colors.white)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: controller.loginEmailController,
                          decoration: InputDecoration(
                            labelText: "Email",
                            fillColor: Colors.white,
                            filled: true,
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
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'please enter valid password';
                            }
                          },
                          controller: controller.loginPasswordController,
                          obscureText: controller.loginShowPassword,
                          decoration: InputDecoration(
                            labelText: "Password",
                            fillColor: Colors.white,
                            filled: true,
                            suffixIcon: controller.loginShowPassword?IconButton(onPressed: (){
                              controller.showPassword();
                            }, icon: Icon(Icons.visibility)):IconButton(onPressed: (){
                              controller.showPassword();
                            }, icon: Icon(Icons.visibility_off)),
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
                          if (loginFormKey.currentState!.validate()) {
                              // Navigator.pushNamed(context, "/HomeScreen");
                      Get.offAllNamed('/HomeScreen');
                      showToast(text: 'Login Success', state: ToastState.SUCCESS);
                          controller.loginEmailController.text='';
                          controller.loginPasswordController.text='';
                          }
                        },

                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.black),
                        ),

                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 1.h,),

                      Text('you don\'t have an account?',style: TextStyle(color: Colors.black),),
                SizedBox(height: 1.h,),
                      TextButton(
                        onPressed: () {
                       //Navigator.pushReplacementNamed(context, '/RegisterScreenView');
                         Get.toNamed('/RegisterScreenView');
                          controller.loginEmailController.text='';
                         controller.loginPasswordController.text='';

                        },
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                        child: Text('Sign Up',style: TextStyle(color: Colors.black),),
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
