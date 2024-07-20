import 'package:flutter/material.dart';
import 'package:flutter_web_res/example_of_responsive.dart';
import 'package:flutter_web_res/home_screen.dart';
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
  return     MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Web',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const HomeScreen(),
  );},
    );
  }
}


