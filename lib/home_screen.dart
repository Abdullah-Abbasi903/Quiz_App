import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.newScreen, {super.key});
  final void Function() newScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 126, 39, 176),
        Color.fromARGB(255, 125, 30, 233)
      ])),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(151, 255, 255, 253),
            ),
            const SizedBox(height: 40),
            const Text(
              'Learn Flutter The Fun Way!!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: newScreen,
              icon: const Icon(Icons.arrow_right_alt),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 126, 39, 176)),
              label: const Text('start quiz'),
            )
          ],
        ),
      ),
    );
  }
}
