import 'package:flutter/material.dart';
import 'app_sizes.dart';

class AppGaps{

  static Widget h10() => SizedBox(height: AppSizes.hp(10));
  static Widget h2() => SizedBox(height: AppSizes.hp(2));
  static Widget h5() => SizedBox(height: AppSizes.hp(5));
  static Widget h20() => SizedBox(height: AppSizes.hp(20));
  static Widget h35() => SizedBox(height: AppSizes.hp(35));
  static Widget h1() => SizedBox(height: AppSizes.hp(1));

  static Widget w10() => SizedBox(width: AppSizes.wp(10));
  static Widget w5() => SizedBox(width: AppSizes.wp(5));
  static Widget w2() => SizedBox(width: AppSizes.wp(2));

}