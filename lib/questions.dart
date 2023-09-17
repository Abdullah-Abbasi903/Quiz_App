import 'package:flutter/material.dart';
import 'package:quiz_app/data/set_questions.dart';
import 'package:quiz_app/question_buttons.dart';
import 'package:google_fonts/google_fonts.dart';


class Questions extends StatefulWidget {
   const Questions({super.key, required this.onSelected});
   final void Function (String setAnswere) onSelected;
  @override
  State<Questions> createState() {
    return  _QuestionsState();
  }
}
class _QuestionsState extends State<Questions> {
  var questionIndex = 0;
  
  void getQuestionIndex (String answ) {
      widget.onSelected(answ);
    setState(() {
      questionIndex++;
    });
    
   }

  
  
    
  @override
  Widget build(BuildContext context) {
    final currQuestion = questions[questionIndex];
  
    return  SizedBox(
      width: double.infinity,
      
        child: Container(
          margin: const  EdgeInsets.all(40),
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                
               children: [
                Text(
                  currQuestion.text,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign:TextAlign.center
                 ),
                const SizedBox(height: 30),
               ...currQuestion.getShuffeledList().map((answer) {
                return Container(
                  margin: const EdgeInsets.all(3),
                  child: QuestionsButtons(
                    answereText: answer, 
                    onTap: () {
                      getQuestionIndex(answer);
                    }));
               })
          ],
             ),
        ),
     
    );
  }
}