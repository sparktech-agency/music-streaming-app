import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingBottomContent extends StatelessWidget {

  const OnboardingBottomContent({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final PageController pageController = PageController();


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
                  const SizedBox(height: 1),
                  SmoothPageIndicator(
                  controller: pageController,
                  count: 3,

                  effect: ExpandingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: AppColors.primaryColor,
                    spacing: 8,
                    expansionFactor: 6,
                  ),
                ),


              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Text(
                        'Welcome to BANGr',
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                      ),

                    const SizedBox(height: 15),

                        Text(
                        'Your music, your way. Discover artists, explore playlists, and BANG your favorite songs to the top.',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),

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
                      onTap: (){

                      },
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