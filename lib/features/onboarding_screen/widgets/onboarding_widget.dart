import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_streaming_app/config/app_colors.dart';
import 'package:music_streaming_app/features/onboarding_screen/controller/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size once
    final screenSize = MediaQuery.sizeOf(context);
    final pageController = PageController();
    final OnboardingController controller = Get.put(OnboardingController());



    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [

            Container(
              width: double.infinity,
              height: screenSize.height,
              color: AppColors.baseBackgroundColor,
            ),

            // Background Image faint
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

            // Decorative Layers
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

            // Hero Image with dynamic position and scale
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
            ),

            // Bottom container
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(top: 25),
                height: screenSize.height * 0.58,
                decoration: BoxDecoration(
                  color: AppColors.onboardingBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SmoothPageIndicator with Obx to update current page
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

                    // Text and other content
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        children: [
                          Text(
                            "Welcome to BANGr",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1.5,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Your music, your way. Discover artists, explore playlists, and BANG your favorite songs to the top.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    // Next button with onTap functionality
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            gradient: AppColors.defaultGradient,
                            shape: BoxShape.circle,
                          ),
                          child: GestureDetector(
                            onTap: () {

                            },
                            child: const Icon(
                              Icons.keyboard_double_arrow_right_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Image.asset('assets/images/onboarding_shape.png'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
