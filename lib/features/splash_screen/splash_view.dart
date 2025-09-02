import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/routes/app_routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (){

  Get.offAllNamed(AppRoutes.onboardingScreen);


    });

  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
