import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import '../Constants/App_Colors.dart';
import '../Constants/App_Sizes.dart';
import '../Constants/App_Style.dart';

class Utils {

  // -----------------------------
  // FLUSHBAR (Blue background)
  // -----------------------------
  static void flushbar(String message, BuildContext context) {
    Flushbar(
      forwardAnimationCurve: Curves.fastOutSlowIn,
      reverseAnimationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 500),
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      positionOffset: 10,

      backgroundColor: kbluecolor,  // BLUE background
      borderRadius: BorderRadius.circular(12),
      margin: const EdgeInsets.all(12),

      boxShadows: [
        BoxShadow(
          color: Colors.black26,
          offset: const Offset(0, 3),
          blurRadius: 8,
        ),
      ],

      messageText: Text(
        message,
        style: TextStyle(
          color: kwhitecolor,               // WHITE TEXT
          fontSize: AppSizes.hp(1.5),
          fontWeight: FontWeight.w600,
        ),
      ),

      icon: Icon(
        Icons.info_outline,                  // BLUE THEME ICON
        size: AppSizes.hp(2),
        color: kwhitecolor,                  // ICON WHITE
      ),
    ).show(context);
  }

  // -----------------------------
  // SNACKBAR (Blue + White)
  // -----------------------------
  static void snackbar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTextStyle.bodyWhite,     // WHITE TEXT
        ),
        backgroundColor: kbluecolor,         // BLUE BACKGROUND
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
