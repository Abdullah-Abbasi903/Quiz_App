class QuizQuestion {
   const QuizQuestion(this.text, this.answeres);
  final String text;
  final List<String>answeres;
  List <String> getShuffeledList (){
    final shuffeledList = List.of(answeres);
    shuffeledList.shuffle();
    return shuffeledList;
  }
}