import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.baseBackgroundColor,
                  ),
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  top: 30,
                    left: 0,
                    child: Transform.scale(
                      scale: 1.3,
                      child: Image.asset(
                                        'assets/images/onboarding_bg.png',
                                        width: MediaQuery.of(context).size.width,
                                        fit: BoxFit.cover,
                                      ),
                    )


                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    'assets/images/splash_topleft.png',
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 80,
                  child: Transform.scale(
                    scale: 1.6,
                    child: Image.asset(
                      'assets/images/onboarding_1.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

              ],



            ),






    );
  }
}
