import 'package:flutter/material.dart';


class BangFlyingAnimation extends StatefulWidget {
  final Widget child; // The Bang icon that will fly
  final AnimationController animationController; // The controller to control the animation
  final double flyHeight; // Height for the flying animation

  const BangFlyingAnimation({
    super.key,
    required this.child,
    required this.animationController,
    required this.flyHeight,
  });

  @override
  BangFlyingAnimationState createState() => BangFlyingAnimationState();
}

class BangFlyingAnimationState extends State<BangFlyingAnimation> {
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    // Define the animation
    _animation = Tween<double>(begin: 0, end: widget.flyHeight).animate(
      CurvedAnimation(
        parent: widget.animationController,
        curve: Curves.easeOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.animationController,
      builder: (context, child) {
        return Positioned(
          bottom: _animation.value, // Control the position of the widget
          left: 0, // You can modify the left position as well
          child: widget.child, // The Bang icon widget that will fly
        );
      },
    );
  }
}
