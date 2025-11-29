import 'package:flutter/material.dart';

class SplashViewModel {
  void goToNextScreen(BuildContext context, Widget nextScreen) {
    Future.delayed(
      const Duration(seconds: 3),
          () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => nextScreen),
              (route) => false,
        );
      },
    );
  }
}
