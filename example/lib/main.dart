import 'package:example/widgets/clickable_button.dart';
import 'package:example/widgets/pressable_button.dart';
import 'package:example/widgets/rippleble_button.dart';
import 'package:example/widgets/wavable_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      theme: ThemeData(
        // colorScheme: const ColorScheme.dark(),
        colorScheme: const ColorScheme.light(),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.sizeOf(context).width),
          const ClickableButton(),
          const SizedBox(height: 32),
          const PressableButton(),
          const SizedBox(height: 32),
          const RipplebleButton(),
          const SizedBox(height: 32),
          const WavableButton(),
        ],
      ),
    );
  }
}
