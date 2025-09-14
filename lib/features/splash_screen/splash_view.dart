import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/splash_screen/widgets/loading_animation.dart';
import 'package:music_streaming_app/routes/app_routes.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
bool _showLoadingAnimation = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), (){
      setState(() {
        _showLoadingAnimation = true;
      });
    });

    Timer(const Duration(seconds: 4), (){
      Get.offAllNamed(AppRoutes.onboardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          Container(
            decoration: const BoxDecoration(
             color: AppColors.baseBackgroundColor,
            ),
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
            top: -2,
            left: -2,
            child: Image.asset(
              'assets/images/splash_topleft.png',
               width: MediaQuery.of(context).size.width,
               fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: -2,
            right: -2,
            child: Image.asset(
              'assets/images/splash_topright.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: -20,
            left: -30,
            child: Image.asset(
              'assets/images/splash_bottomleft.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ),


          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 60),
                Image.asset(
                  'assets/images/splash_wave.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 60),
                SvgPicture.asset(
                  'assets/app_logos/main_logo.svg',
                ),
                const Spacer(),
                if(_showLoadingAnimation) const LoadingAnimation(),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
