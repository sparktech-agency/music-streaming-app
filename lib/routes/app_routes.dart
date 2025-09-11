import 'package:get/get.dart';
import 'package:music_streaming_app/features/home_screen/home_view.dart';
import 'package:music_streaming_app/features/onboarding_screen/onboarding_view.dart';
import 'package:music_streaming_app/features/splash_screen/splash_view.dart';


final List<GetPage> routes = [
  GetPage(name: AppRoutes.splashScreen, page: ()=> SplashView()),
  GetPage(name: AppRoutes.onboardingScreen, page: ()=> OnboardingView()),
  GetPage(name: AppRoutes.homeScreen, page: ()=> HomeView()),

];

class AppRoutes{

  AppRoutes._();
  static const String splashScreen = '/splash';
  static const String onboardingScreen = '/onboarding';
  static const String homeScreen = '/home';


}