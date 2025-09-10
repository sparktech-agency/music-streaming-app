import 'package:flutter/material.dart';
import 'package:music_streaming_app/features/onboarding_screen/controller/onboarding_controller.dart';
import 'package:music_streaming_app/features/onboarding_screen/widgets/onboarding_bg.dart';
import 'package:music_streaming_app/features/onboarding_screen/widgets/onboarding_bottom.dart';
import 'package:music_streaming_app/features/onboarding_screen/widgets/onboarding_hero_image.dart';
import 'package:get/get.dart';


class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
  final OnboardingController controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          const OnboardingBg(),

          PageView(
            controller: controller.imagePageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnboardingHeroImage(imagePath: 'assets/images/onboarding_1.png', topValue: 100, leftValue: 90, scaleValue: 1.6),
              OnboardingHeroImage(imagePath: 'assets/images/onboarding_2.png', topValue: 90, leftValue: 30, scaleValue: 1.2),
              OnboardingHeroImage(imagePath: 'assets/images/onboarding_3.png', topValue: 60, leftValue: 0, scaleValue: 1),
            ],
          ),
          const OnboardingBottomContent(),

        ],
      ),
    );
  }
}