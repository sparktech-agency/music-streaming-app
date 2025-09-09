import 'package:flutter/material.dart';

class OnboardingHeroImage extends StatelessWidget {

  const OnboardingHeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 90,
            child: Transform.scale(
              scale: 1.6,
              child: Image.asset(
                'assets/images/onboarding_1.png',
                width: screenSize.width,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],

    ),
    );




  }
}