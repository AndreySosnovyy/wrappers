import 'package:flutter/material.dart';
import 'package:wrappers/src/press_detector_builder.dart';

class Clickable extends StatefulWidget {
  const Clickable({
    required this.child,
    this.onTap,
    this.onLongPress,
    super.key,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  @override
  State<Clickable> createState() => _ClickableState();
}

class _ClickableState extends State<Clickable> {
  @override
  Widget build(BuildContext context) {
    return PressDetectorBuilder(
      builder: (context, isPressed) {
        return Stack(
          children: [
            widget.child,
            if (widget.onTap != null)
              AnimatedOpacity(
                duration: const Duration(milliseconds: 60),
                opacity: isPressed ? 1 : 0,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.4),
                    BlendMode.srcATop,
                  ),
                  child: widget.child,
                ),
              ),
          ],
        );
      }
    );
  }
}
