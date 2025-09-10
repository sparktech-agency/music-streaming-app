import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController{

final PageController textPageController = PageController();
final PageController imagePageController = PageController();


final currentIndex = 0.obs;


void updatePageIndicator(index){

  currentIndex.value = index;

}

void nextPage() {
  if (currentIndex.value < 2) {
    int nextPage = currentIndex.value + 1;


    if (textPageController.hasClients) {
      textPageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

    if (imagePageController.hasClients) {
      imagePageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }

  } else {
    print('Last Page - Navigate to next screen or action');
    // Get.off(() => HomeScreen()); // উদাহরণ
  }

}

}