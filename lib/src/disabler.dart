import 'package:flutter/material.dart';

// TODO(Sosnovyy): make not transparent when disabled
class Disabler extends StatelessWidget {
  const Disabler({required this.child, required this.enabled, super.key});

  final bool enabled;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enabled,
      child: Opacity(opacity: !enabled ? .7 : 1, child: child),
    );
  }
}
