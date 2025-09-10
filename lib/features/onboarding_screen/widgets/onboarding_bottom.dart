import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/onboarding_screen/controller/onboarding_controller.dart';
import 'package:music_streaming_app/features/onboarding_screen/widgets/onboarding_text.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class OnboardingBottomContent extends StatelessWidget {

  const OnboardingBottomContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final OnboardingController controller = Get.put(OnboardingController());


    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: screenSize.height * 0.57,
        decoration: const BoxDecoration(
          color: AppColors.onboardingBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                  const SizedBox(height: 30),
                  SmoothPageIndicator(
                  controller: controller.textPageController,
                  count: 3,

                  effect: ExpandingDotsEffect(
                    dotColor: Colors.white,
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: AppColors.primaryColor,
                    spacing: 8,
                    expansionFactor: 6,
                  ),
                ),


              const SizedBox(height: 80),

              Expanded(
                child: PageView(
                  controller: controller.textPageController,
                  onPageChanged: controller.updatePageIndicator,
                  children: [
                    OnboardingText(titleText: 'Welcome to BANGr', detailsText: 'Your music, your way. Discover artists,\nexplore playlists, and BANG your\nfavorite songs to the top.'),
                    OnboardingText(titleText: 'Discover Artists that Hit Different', detailsText: 'Explore music from your favorite\nartists and uncover new talent\nevery day'),
                    OnboardingText(titleText: 'BANG Your Favorite Songs', detailsText: 'Tap the BANG button to boost\nsongs on the charts and see the “b”\nlogo animation.'),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // The button and image remain static
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    decoration: const BoxDecoration(
                      gradient: AppColors.defaultGradient,
                      shape: BoxShape.circle,
                    ),
                    child: GestureDetector(
                      onTap: ()=> controller.nextPage(),
                      child: const Icon(
                        Icons.keyboard_double_arrow_right_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Image.asset('assets/images/onboarding_shape.png'),
                ],
              ),
            ],
          ),

      ),
    );
  }
}