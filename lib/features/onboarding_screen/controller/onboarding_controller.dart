import 'package:get/get.dart';

class OnboardingController extends GetxController{

var currentPage = 0.obs;
var onboardingText = "Welcome to BANGr".obs;
var onboardingDetails = "Your music, your way. Discover artists, explore playlists, and BANG your favorite songs to the top.".obs;
var onboardingImage = "assets/images/onboarding_1.png".obs;
var topPosition = 100.obs;
var leftPosition = 90.obs;
var scale = 1.6.obs;

void changePage(int index){
  currentPage.value = index;
}

//method: change image
void changeImage(int index){
  switch(index){
    case 0:
      onboardingImage.value = "assets/images/onboarding_1.png";
      topPosition.value = 100;
      leftPosition.value = 90;
      scale.value = 1.6;
      break;
    case 1:
      onboardingImage.value = "assets/images/onboarding_2.png";
      topPosition.value = 50;
      leftPosition.value = 20;
      scale.value = 1.1;
      break;
    case 2:
      onboardingImage.value = "assets/images/onboarding_3.png";
      topPosition.value = 50;
      leftPosition.value = 0;
      scale.value = 0.9;
      break;


  }
}


//method: change text





}