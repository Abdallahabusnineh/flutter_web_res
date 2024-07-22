import 'package:flutter/material.dart';
import 'package:flutter_web_res/example_of_responsive.dart';
import 'package:flutter_web_res/home_screen.dart';
import 'package:flutter_web_res/view/login_screen_view.dart';
import 'package:flutter_web_res/view/register_screen_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Web',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
         //initialRoute: '/',

       /*   routes: {
            '/LoginScreenView': (context) => LoginScreenView(),
            '/RegisterScreenView': (context) => RegisterScreenView(),
            '/HomeScreen': (context) =>const HomeScreen(),
          },*/
          home: LoginScreenView(),
          getPages: [
            GetPage(name: '/LoginScreenView', page: () => LoginScreenView()),
            GetPage(name: '/RegisterScreenView', page: () => RegisterScreenView()),
            GetPage(name: '/HomeScreen', page: () =>const HomeScreen()),
          ],

        );
      },
    );
  }
}
