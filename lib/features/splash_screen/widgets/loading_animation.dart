import 'dart:math';
import 'package:flutter/material.dart';
import 'package:music_streaming_app/config/app_colors.dart';



const int _numberOfDots = 9;
const double _baseDotSize = 3.0;
const double _dotSizeVariationFactor = 1.0;
const double _dotRadiusOffset = 5.0;
const double _angleSeparationDegrees = 35.0;

class LoadingAnimation extends StatefulWidget {
  final double size;
  final Gradient dotColor;
  final Duration duration;

  const LoadingAnimation({
    super.key,
    this.size = 50.0,
    this.dotColor = AppColors.defaultGradient,
    this.duration = const Duration(seconds: 2),
  });

  @override
  _LoadingAnimationState createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,

    );

    _progressAnimation =
    CurvedAnimation(parent: _animationController, curve: Curves.linear)
      ..addListener(() {

        if (mounted) {
          setState(() {});
        }
      });

    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final containerSize = widget.size;
    final center = containerSize / 2;
    final radius = center - _dotRadiusOffset;

    return SizedBox(
      width: containerSize,
      height: containerSize,
      child: Stack(
        alignment: Alignment.center,
        children: List.generate(_numberOfDots, (index) {

          final baseAngle = (index * _angleSeparationDegrees) * pi / 180;

          final currentRotationOffset = _progressAnimation.value * 2 * pi;

          final angle = currentRotationOffset + baseAngle;

          final x = radius * cos(angle);
          final y = radius * sin(angle);

          final dotSize = _baseDotSize +
              (index * _dotSizeVariationFactor) * _progressAnimation.value;

          return Positioned(

            left: center + x - dotSize / 2,
            top: center + y - dotSize / 2,
            child: Dot(
              dotColor: widget.dotColor,
              size: dotSize.clamp(0, double.infinity),
            ),
          );
        }),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final Gradient dotColor;
  final double size;

  const Dot({super.key, required this.dotColor, required this.size});

  @override
  Widget build(BuildContext context) {

    final effectiveSize = max(0.0, size);
    return Container(
      width: effectiveSize,
      height: effectiveSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: dotColor,
      ),
    );
  }
}
