import 'package:flutter/material.dart';

import '../../Core/Constants/App_Sizes.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Scaffold(
    );
  }
}
