import 'package:flutter/material.dart';

class OnboardingHeroImage extends StatelessWidget {

 final String imagePath;
 final double topValue;
 final double leftValue;
 final double scaleValue;

 const OnboardingHeroImage({super.key, required this.imagePath, required this.topValue, required this.leftValue, required this.scaleValue});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            top: topValue,
            left: leftValue,
            child: Transform.scale(
              scale: scaleValue,
              child: Image.asset(
                imagePath,
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