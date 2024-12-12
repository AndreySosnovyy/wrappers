import 'package:flutter/material.dart';
import 'package:wrappers/src/press_detector_builder.dart';

class Wavable extends StatefulWidget {
  const Wavable({
    required this.child,
    this.onTap,
    this.onLongPress,
    this.waveColor,
    this.borderRadius,
    super.key,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final Color? waveColor;
  final BorderRadius? borderRadius;

  @override
  State<Wavable> createState() => _WavableState();
}

class _WavableState extends State<Wavable> with TickerProviderStateMixin {
  late final radiusController = AnimationController(
    vsync: this,
    // duration: const Duration(milliseconds: 140),
    duration: const Duration(milliseconds: 3000),
    lowerBound: 0.0,
    upperBound: 12.0,
  );
  late final opacityController = AnimationController(
    vsync: this,
    // duration: const Duration(milliseconds: 140),
    duration: const Duration(milliseconds: 3000),
    lowerBound: 0.0,
    upperBound: 0.5,
    value: 0.5,
  );

  @override
  Widget build(BuildContext context) {
    return PressDetectorBuilder(
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      builder: (context, isPressed) {
        if (isPressed) {
          radiusController.reset();
          opacityController.value = 0.5;
          radiusController.animateTo(radiusController.upperBound,
              curve: Curves.ease);
          Future.delayed(radiusController.duration! ~/ 2).then((_) {
            opacityController.animateTo(opacityController.lowerBound,
                curve: Curves.ease);
          });
        }
        return AnimatedBuilder(
          animation: radiusController,
          builder: (context, _) {
            return AnimatedBuilder(
              animation: opacityController,
              builder: (context, child) {
                return DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: widget.borderRadius,
                    boxShadow: [
                      BoxShadow(
                        color: (widget.waveColor ??
                                Theme.of(context).colorScheme.onSurface)
                            .withOpacity(opacityController.value),
                        blurRadius: 10,
                        spreadRadius: radiusController.value,
                      ),
                    ],
                  ),
                  child: widget.child,
                );
              },
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    radiusController.dispose();
    super.dispose();
  }
}
