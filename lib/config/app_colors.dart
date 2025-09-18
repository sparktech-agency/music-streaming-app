import 'package:flutter/material.dart';

class AppColors{
  AppColors._();

  static const primaryColor = Color(0xFFF7009E);
  static const secondaryColor = Color(0xFFFF7DD0);
  static const baseBackgroundColor = Color(0xFF121212);
  static const onboardingBackgroundColor = Color(0xFF312B36);

  //gradient colors
  static const List<Color> defaultGradientColor = [secondaryColor, primaryColor];
  static const LinearGradient defaultGradient = LinearGradient(
  colors: defaultGradientColor,
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

}