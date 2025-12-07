
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uniweek1/View/Splash_Screen_View/Splash_Screen.dart';
import 'package:uniweek1/routes/routes_name.dart';

class AppRoutes {

  static Route<dynamic>  generateRoute(RouteSettings settings) {

    switch(settings.name) {
      case RoutesNames.splashscreen:
        return fadeRoute(SplashScreen());

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                Scaffold(
                  body: Center(
                    child: Text(
                        'No route defined for this path'
                    ),
                  ),
                )
        );
    }
  }
}

Route<dynamic> fadeRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    transitionDuration:  Duration(milliseconds: 1),
    reverseTransitionDuration: Duration(milliseconds: 1),
  );
}