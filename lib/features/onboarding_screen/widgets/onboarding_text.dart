import 'package:flutter/material.dart';

class OnboardingText extends StatelessWidget {
  final String titleText;
  final String detailsText;

  const OnboardingText({super.key, required this.titleText, required this.detailsText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(

        children: [
          Text(
            titleText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
        Text(
          detailsText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        )
        ]
      ),
    );
  }
}
