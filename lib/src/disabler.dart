import 'package:flutter/material.dart';

class Disabler extends StatefulWidget {
  const Disabler({
    required this.child,
    required this.enabled,
    this.surfaceColor,
    super.key,
  });

  final bool enabled;
  final Widget child;

  /// The scaffold background color (or any other widget that is in background)
  final Color? surfaceColor;

  @override
  State<Disabler> createState() => _DisablerState();
}

class _DisablerState extends State<Disabler> {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !widget.enabled,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          widget.enabled
              ? Colors.transparent
              : (widget.surfaceColor ?? Theme.of(context).colorScheme.surface)
                  .withOpacity(0.5),
          BlendMode.srcATop,
        ),
        child: widget.child,
      ),
    );
  }
}
