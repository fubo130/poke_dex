import 'package:flutter/material.dart';

class SizeConfig {
//   SizeConfig._();
  static MediaQueryData mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double pixelRatio;

  void initialize(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    pixelRatio = 1;
    screenWidth = mediaQueryData.size.width / (pixelRatio * 100);
    screenHeight = mediaQueryData.size.height / (pixelRatio * 100);
  }

  static double widthPercent(double width) {
    return width * screenWidth;
  }

  static double heightPercent(double height) {
    return height * screenHeight;
  }

//   static
}
