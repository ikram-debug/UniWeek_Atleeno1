import 'package:flutter/material.dart';

class AppSizes {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double blockWidth;
  static late double blockHeight;
  static late double textScaleFactor;


  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
    textScaleFactor = _mediaQueryData.textScaleFactor;
  }


  static double wp(double percent) => blockWidth * percent;
  static double hp(double percent) => blockHeight * percent;
  static double sp(double fontSize) => fontSize * textScaleFactor;
}
