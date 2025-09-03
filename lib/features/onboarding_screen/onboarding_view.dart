
import 'package:flutter/material.dart';
import 'package:music_streaming_app/custom_widgets/loading_animation.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

  body: Center(
    child: LoadingAnimation(),
  ),


    );
  }
}
