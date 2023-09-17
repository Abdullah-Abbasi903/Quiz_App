import 'package:flutter/material.dart';

class QuestionsButtons extends StatelessWidget {
  const QuestionsButtons({super.key,
  required this.answereText, 
  required this.onTap
  }
  );


  final String answereText;
  final void Function () onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: 
        const Color.fromARGB(255, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
          )
        ),
      child: Text(answereText,textAlign: TextAlign.center)
      );
  }
}