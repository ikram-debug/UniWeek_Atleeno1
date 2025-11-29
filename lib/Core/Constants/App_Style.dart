import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'App_Colors.dart';
import 'App_Sizes.dart';

class AppTextStyle {

  // -------------------------------
  // BLACK + BLUE + WHITE MAIN BODY
  // -------------------------------

  /// Normal body text (Black)
  static TextStyle body = TextStyle(
    fontSize: AppSizes.sp(14),
    color: kblackcolor,
  );

  /// Title text (Black – bold)
  static TextStyle title = GoogleFonts.aboreto(
    fontSize: AppSizes.sp(16),
    color: kblackcolor,
    fontWeight: FontWeight.bold,
  );

  // -------------------------------
  // ERROR TEXT (Red + Blue)
  // -------------------------------

  /// Error text (Orange from your theme)
  static TextStyle error = TextStyle(
    fontSize: AppSizes.sp(14),
    color: errortcolor,   // warning color
  );

  /// Error title (Blue-bold)
  static TextStyle errorBlue = TextStyle(
    fontSize: AppSizes.sp(16),
    color: kbluecolor,
    fontWeight: FontWeight.bold,
  );

  // -------------------------------
  // BLUE THEME TEXT
  // -------------------------------

  /// Blue bold text
  static TextStyle blueBold = TextStyle(
    fontSize: AppSizes.sp(16),
    color: kbluecolor,
    fontWeight: FontWeight.bold,
  );

  /// Blue heading (bigger)
  static TextStyle blueHeading = GoogleFonts.aboreto(
    fontSize: AppSizes.sp(20),
    color: kbluecolor,
    fontWeight: FontWeight.bold,
  );

  // -------------------------------
  // WHITE TEXT STYLES
  // -------------------------------

  static TextStyle bodyLargeWhite = GoogleFonts.aboreto(
    fontSize: AppSizes.sp(30),
    color: kwhitecolor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle bodyWhite = GoogleFonts.poppins(
    fontSize: AppSizes.sp(14),
    color: kwhitecolor,
  );

  static TextStyle whiteBold = TextStyle(
    fontSize: AppSizes.sp(16),
    color: kwhitecolor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle drawer = TextStyle(
    fontSize: AppSizes.sp(18),
    color: kwhitecolor,
    fontWeight: FontWeight.w300,
  );

  static TextStyle input = TextStyle(
    fontSize: AppSizes.sp(16),
    color: kwhitecolor,
  );

  // -------------------------------
  // HINT TEXT
  // -------------------------------

  static TextStyle hintBlueLight = TextStyle(
    fontSize: AppSizes.sp(14),
    color: klightcolor,   // very light blue
  );

  static TextStyle hintGrey = TextStyle(
    fontSize: AppSizes.sp(14),
    color: kTextLightColor, // light grey
  );
}
