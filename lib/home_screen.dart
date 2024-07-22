import 'dart:js_interop';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_res/core/utlis/constant.dart';
import 'package:flutter_web_res/core/utlis/is_responsive.dart';
import 'package:flutter_web_res/view/body_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'core/utlis/customwidget.dart';
class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    print("width ${MediaQuery.of(context).size.width.toString()}");
    print("height ${MediaQuery.of(context).size.height.toString()}");
    return Scaffold(
      appBar: IsResponsive.isWebScreen(context)?null:CustomWidget.mobileAppBar(),
      backgroundColor: Colors.grey.shade100,
      drawer: IsResponsive.isWebScreen(context)?null:CustomWidget.drawer(),
        body: Row(
          children: [
            IsResponsive.isWebScreen(context)?Expanded(

              child: SizedBox(
                  width: MediaQuery.of(context).size.width * .2,
                  child:CustomWidget.drawer()),
            ):const SizedBox(),
           // IsResponsive.isWebScreen(context)?AppBar():const SizedBox(),
            Expanded(
              flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(1.w),
                  child: const BodyView(),
                ))
          ],
        ),
    );
  }

}

