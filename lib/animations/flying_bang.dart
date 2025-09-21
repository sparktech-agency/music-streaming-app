import 'dart:math';
import 'package:flutter/material.dart';

class FlyingBang extends StatefulWidget {
  final String assetPath;
  final double size;
  final VoidCallback onTap;

  const FlyingBang({
    super.key,
    required this.assetPath,
    required this.onTap,
    this.size = 40,
  });

  @override
  State<FlyingBang> createState() => _FlyingBangState();
}

class _FlyingBangState extends State<FlyingBang>
    with TickerProviderStateMixin {
  final List<OverlayEntry> _flyingEntries = [];

  void _startFlying(BuildContext context) {
    widget.onTap();

    final renderBox = context.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero); // button position

    for (int i = 0; i < 4; i++) {
      final controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1300),
      );

      final random = Random();
      final dx = (random.nextDouble() - 0.5) * 2 * 300; // fly random X
      final dy = -random.nextDouble() * 800; // fly upward

      final animation = Tween<Offset>(
        begin: Offset.zero,
        end: Offset(dx, dy),
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

      final fade = Tween<double>(begin: 1, end: 0).animate(controller);

      // 🔥 Added scale animation here
      final scale = Tween<double>(begin: 2.0, end: 6.0) // <-- grow 3x bigger
          .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut));

      final entry = OverlayEntry(
        builder: (context) {
          return AnimatedBuilder(
            animation: controller,
            builder: (context, child) {
              return Positioned(
                left: offset.dx,
                top: offset.dy,
                child: Transform.translate(
                  offset: animation.value,
                  child: Transform.scale(
                    scale: scale.value, // <-- apply scale here
                    child: Opacity(
                      opacity: fade.value,
                      child: Image.asset(
                        widget.assetPath,
                        width: widget.size * 0.7,
                        height: widget.size * 0.5,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      );

      Overlay.of(context).insert(entry);
      _flyingEntries.add(entry);

      controller.forward().whenComplete(() {
        entry.remove();
        _flyingEntries.remove(entry);
        controller.dispose();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _startFlying(context),
      child: Image.asset(widget.assetPath,
          width: widget.size, height: widget.size * 0.75),
    );
  }
}
