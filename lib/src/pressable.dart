import 'package:flutter/material.dart';
import 'package:wrappers/src/press_detector_builder.dart';

class Pressable extends StatelessWidget {
  const Pressable({
    required this.child,
    this.onTap,
    this.onLongPress,
    super.key,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return PressDetectorBuilder(
      onTap: onTap,
      onLongPress: onLongPress,
      builder: (context, isPressed) {
        return AnimatedScale(
          scale: isPressed ? 0.94 : 1.0,
          duration: const Duration(milliseconds: 60),
          child: child,
        );
      },
    );
  }
}
