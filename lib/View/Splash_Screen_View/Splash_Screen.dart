import 'dart:async';
import 'package:flutter/material.dart';
import '../../ViewModel/SplashScreenVM.dart';
import '../Home_Screen_View/Home_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final SplashViewModel viewModel = SplashViewModel();

  @override
  void initState() {
    super.initState();

    viewModel.goToNextScreen(context, const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset(
            "assets/logo.jpeg",
          ),
        )
      ),
    );
  }
}
