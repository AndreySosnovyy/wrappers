import 'package:flutter/material.dart';
import 'package:wrappers/wrappers.dart';

class RipplebleButton extends StatelessWidget {
  const RipplebleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Rippleble(
      parentBorderRadius: 16,
      rippleColor: Colors.white.withOpacity(0.4),
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
              'Rippleble button',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
