import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';

class OnboardingBg extends StatelessWidget {
  const OnboardingBg({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.sizeOf(context);

    return Container(
      width: double.infinity,
      height: screenSize.height,
      color: AppColors.baseBackgroundColor,
      child: Stack(
        children: [

          Positioned(
            top: 30,
            left: 0,
            child: Transform.scale(
              scale: 1.5,
              child: Opacity(
                opacity: 0.4,
                child: Image.asset(
                  'assets/images/onboarding_bg.png',
                  width: screenSize.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),


          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/onboarding_layer_1.png',
              width: screenSize.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/onboarding_layer_2.png',
              width: screenSize.width,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
