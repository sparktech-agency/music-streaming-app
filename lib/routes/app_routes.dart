
import 'package:get/get.dart';
import 'package:music_streaming_app/features/onboarding_screen/onboarding_view.dart';

final List<GetPage> routes = [
GetPage(name: AppRoutes.onboardingScreen, page: ()=> OnboardingView()),

];

class AppRoutes{

  AppRoutes._();
  static const String onboardingScreen = '/onboarding';


}