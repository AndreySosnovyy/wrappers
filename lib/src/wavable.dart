import 'package:flutter/material.dart';

class Wavable extends StatelessWidget {
  const Wavable({
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
    return child;
  }
}
