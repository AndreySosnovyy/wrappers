import 'package:flutter/material.dart';
import 'package:wrappers/wrappers.dart';

class WavableButton extends StatelessWidget {
  const WavableButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Wavable(
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
              'Wavable button',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
