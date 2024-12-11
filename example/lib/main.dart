import 'package:example/widgets/custom_button.dart';
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
          const CustomButton(),
          const SizedBox(height: 32),
          Disabler(
            enabled: false,
            child: Container(
              height: 60,
              width: 240,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
