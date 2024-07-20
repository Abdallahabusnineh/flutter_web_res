import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_res/core/utlis/custom_widget.dart';
import 'package:flutter_web_res/core/utlis/is_responsive.dart';
import 'package:flutter_web_res/view/body_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'core/utlis/customwidget.dart';
class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
      final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final bool isSmallScreen = screenWidth < 600;
    List<bool> isSelcted = [false, true, false, false];
    final List<String> labels = [
      'Last 24 hours',
      'Last week',
      'Last month',
      'Last year'
    ];
    print("width ${MediaQuery.of(context).size.width.toString()}");
    print("height ${MediaQuery.of(context).size.height.toString()}");
    return Scaffold(
      appBar: IsResponsive.isWebScreen(context)?null:CustomWidget.mobileAppBar(),
      backgroundColor: Colors.grey.shade100,
      drawer: IsResponsive.isWebScreen(context)?null:CustomWidget.webDrawer(),
        body: Row(
          children: [
            IsResponsive.isWebScreen(context)?Expanded(
              flex: 1,
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * .2,
                  child:CustomWidget.webDrawer()),
            ):const SizedBox(),
           // IsResponsive.isWebScreen(context)?AppBar():const SizedBox(),
            Expanded(
              flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(1.w),
                  child: BodyView(),
                ))
          ],
        ),
    );
  }

}
