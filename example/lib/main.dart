import 'package:flutter/material.dart';
import 'package:wrappers/wrappers.dart';

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
          Clickable(
            onTap: () {},
            child: const ExampleButton(label: 'Clickable button'),
          ),
          const SizedBox(height: 32),
          Pressable(
            onTap: () {},
            child: const ExampleButton(label: 'Pressable button'),
          ),
          const SizedBox(height: 32),
          Rippleble(
            onTap: () {},
            parentBorderRadius: 16,
            rippleColor: Colors.white.withOpacity(0.4),
            child: const ExampleButton(label: 'Rippleble button'),
          ),
          const SizedBox(height: 32),
          Wavable(
            onTap: () {},
            child: const ExampleButton(label: 'Wavable button'),
          ),
        ],
      ),
    );
  }
}

class ExampleButton extends StatelessWidget {
  const ExampleButton({
    required this.label,
    super.key,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 240,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
