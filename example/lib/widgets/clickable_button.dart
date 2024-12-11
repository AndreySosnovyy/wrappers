import 'package:flutter/material.dart';
import 'package:wrappers/wrappers.dart';

class ClickableButton extends StatelessWidget {
  const ClickableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Clickable(
      onTap: () {},
      child: const SizedBox(
        height: 60,
        width: 240,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Center(
            child: Text(
              'Clickable button',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
