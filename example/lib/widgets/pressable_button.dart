import 'package:flutter/material.dart';
import 'package:wrappers/wrappers.dart';

class PressableButton extends StatelessWidget {
  const PressableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Pressable(
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
              'Pressable button',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
