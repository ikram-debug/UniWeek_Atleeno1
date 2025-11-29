import 'package:flutter/material.dart';
import 'app_sizes.dart';


class AppPaddings {
  /// Vertical padding (top & bottom same)
  static EdgeInsets vertical(double value) =>
      EdgeInsets.symmetric(vertical: AppSizes.hp(value));

  /// Horizontal padding (left & right same)
  static EdgeInsets horizontal(double value) =>
      EdgeInsets.symmetric(horizontal: AppSizes.wp(value));

  /// All sides equal padding
  static EdgeInsets all(double value) =>
      EdgeInsets.all(AppSizes.hp(value));

  /// Only top padding
  static EdgeInsets top(double value) =>
      EdgeInsets.only(top: AppSizes.hp(value));

  /// Only bottom padding
  static EdgeInsets bottom(double value) =>
      EdgeInsets.only(bottom: AppSizes.hp(value));

  /// Only left padding
  static EdgeInsets left(double value) =>
      EdgeInsets.only(left: AppSizes.wp(value));

  /// Only right padding
  static EdgeInsets right(double value) =>
      EdgeInsets.only(right: AppSizes.wp(value));

  /// Custom each side padding
  static EdgeInsets only({
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
  }) =>
      EdgeInsets.only(
        left: AppSizes.wp(left),
        right: AppSizes.wp(right),
        top: AppSizes.hp(top),
        bottom: AppSizes.hp(bottom),
      );

  static EdgeInsets symmetric(
      double horizontal,
      double vertical,
      ) =>
      EdgeInsets.symmetric(
        horizontal: AppSizes.wp(horizontal),
        vertical: AppSizes.hp(vertical),
      );
}
