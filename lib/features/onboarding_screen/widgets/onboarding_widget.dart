import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/onboarding_screen/widgets/onboarding_bg.dart';
import 'package:music_streaming_app/features/onboarding_screen/widgets/onboarding_bottom.dart';
import 'package:music_streaming_app/features/onboarding_screen/widgets/onboarding_hero_image.dart';
import 'package:music_streaming_app/features/splash_screen/splash_view.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          const OnboardingBg(),

          PageView(
            children: [
              OnboardingHeroImage(),
              OnboardingHeroImage(),

            ],
          ),
          const OnboardingBottomContent(),

        ],
      ),
    );
  }
}