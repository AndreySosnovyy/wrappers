import 'package:flutter/material.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';

class Rippleble extends StatelessWidget {
  const Rippleble({
    required this.child,
    this.onTap,
    this.onLongPress,
    this.parentBorderRadius,
    this.rippleColor,
    super.key,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final double? parentBorderRadius;
  final Color? rippleColor;

  @override
  Widget build(BuildContext context) {
    return TouchRipple(
      onTap: onTap,
      rejectBehavior: TouchRippleRejectBehavior.leave,
      rippleColor: rippleColor,
      overlapBehavior: TouchRippleOverlapBehavior.cancel,
      rippleBorderRadius:
          BorderRadius.all(Radius.circular(parentBorderRadius ?? 0)),
      child: child,
    );
  }
}
