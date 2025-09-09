import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnboardingData {
  final String imagePath;
  final String title;
  final String description;
  final double topValue;
  final double leftValue;
  final double scaleValue;

  OnboardingData({required this.imagePath, required this.title, required this.description, required this.topValue, required this.leftValue, required this.scaleValue});
}

class OnboardingController extends GetxController {

  final List<OnboardingData> onboardingPages = [
    OnboardingData(
      imagePath: 'assets/images/onboarding_1.png',
      title: "Welcome to BANGr",
      description: "Your music, your way. Discover artists, explore playlists, and BANG your favorite songs to the top.",
      topValue: 100,
      leftValue: 90,
      scaleValue: 1.6,
    ),
    OnboardingData(
      imagePath: 'assets/images/onboarding_2.png',
      title: "Discover New Music",
      description: "Dive into a world of endless tunes. Find new artists, trending tracks, and hidden gems.",
      topValue: 100,
      leftValue: 90,
      scaleValue: 1.6,
    ),
    OnboardingData(
      imagePath: 'assets/images/onboarding_3.png',
      title: "Create Your Playlists",
      description: "Craft the perfect soundtrack for every moment. Organize your favorite songs and share them.",
      topValue: 100,
      leftValue: 90,
      scaleValue: 1.6,
    ),
  ];

  RxInt currentPageIndex = 0.obs;
  late PageController pageController;

  late final Rx<OnboardingData> currentOnboardingData;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    currentOnboardingData = onboardingPages[currentPageIndex.value].obs;
  }

  void updatePageIndex(int index) {
    currentPageIndex.value = index;
    currentOnboardingData.value = onboardingPages[index]; // Update the observable data
  }

  void nextPage() {
    if (currentPageIndex.value < onboardingPages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    } else {
      //Get.offAllNamed('/home'); // Example: Navigate to home screen
      print("hello");
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}