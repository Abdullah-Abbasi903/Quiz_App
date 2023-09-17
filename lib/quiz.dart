import 'package:flutter/material.dart';
import 'package:quiz_app/data/set_questions.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswere = [];

  void setSelectedAnswere(String answer) {
    selectedAnswere.add(answer);
    if (selectedAnswere.length == questions.length) {
      setState(() {
        //
        currScreen = 'result_screen';
      });
    }
  }

  var currScreen = 'start_screen';

  void switchScreen() {
    setState(() {
      currScreen = 'questions';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswere = [];

      currScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(switchScreen);

    if (currScreen == 'questions') {
      screenWidget = Questions(onSelected: setSelectedAnswere);
    } else if (currScreen == 'result_screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswere,
        restart: restartQuiz,
      );
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 126, 39, 176),
              Color.fromARGB(255, 125, 30, 233)
            ])),
            child: screenWidget),
      ),
    );
  }
}
