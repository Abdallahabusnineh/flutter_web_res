import 'package:flutter/material.dart';

class IsResponsive {
  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width <= 600;
  }
 static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 600&& MediaQuery.of(context).size.width<1000;
  }
  static bool isWebScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1000;
  }

}
