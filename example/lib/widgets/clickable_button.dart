import 'package:flutter/material.dart';
import 'package:wrappers/wrappers.dart';

class ClickableButton extends StatelessWidget {
  const ClickableButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Clickable(
      child: SizedBox(
        height: 60,
        width: 180,
        child: ColoredBox(color: Colors.blue),
      ),
    );
  }
}
