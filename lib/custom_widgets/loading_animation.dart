import 'dart:math';
import 'package:flutter/material.dart';

class LoadingAnimation extends StatefulWidget {
  final double size;
  final Color dotColor;
  final Duration duration;

  const LoadingAnimation({
    super.key,
    this.size = 80.0,
    this.dotColor = Colors.pink,
    this.duration = const Duration(seconds: 2),
  });

  @override
  _LoadingAnimationState createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear)
      ..addListener(() {
        setState(() {});
      });

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        children: List.generate(9, (index) {
          final angle = (index * 34) * pi / 180; // Calculate angle for each dot
          final radius = widget.size / 2 - 5;  // Adjust radius

          final animationValue = _animation.value * 2 * pi; // Rotate full 360 degrees in one direction

          // Calculate the X and Y positions using sine and cosine for a circular movement
          final x = radius * cos(animationValue + angle); // X position of each dot
          final y = radius * sin(animationValue + angle); // Y position of each dot

          // Size of the dot gets larger as the animation progresses
          double dotSize = 3 + (index * 2) * _animation.value; // Gradually increasing size

          return Positioned(
            top: widget.size / 2 + y,
            left: widget.size / 2 + x,
            child: Dot(dotColor: widget.dotColor, size: dotSize),
          );
        }),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final Color dotColor;
  final double size;

  const Dot({super.key, required this.dotColor, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: dotColor,
      ),
    );
  }
}
