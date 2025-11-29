import "package:flutter/material.dart";
import "package:visual_spark_app/routes/routes.dart";
import "package:visual_spark_app/routes/routes_name.dart";

import "View/Splash_Screen_View/Splash_Screen.dart";



class  Visual_Spark_App extends StatelessWidget {
  const  Visual_Spark_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesNames.splashscreen,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}

