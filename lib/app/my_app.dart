import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.rightToLeft,
    debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.splashScreen,
      getPages: routes,
    );
  }
}
