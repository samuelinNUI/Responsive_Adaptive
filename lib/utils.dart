import 'package:flutter/material.dart';
import 'package:responsive_adaptive/const.dart';

class ScreenSize {
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static bool isMobile(BuildContext context) {
    return screenWidth(context) < mobileWidth;
  }

  static bool isTablet(BuildContext context) {
    return screenWidth(context) >= mobileWidth && screenWidth(context) < tabletWidth;
  }

  static bool isDesktop(BuildContext context) {
    return screenWidth(context) >= tabletWidth;
  }
}