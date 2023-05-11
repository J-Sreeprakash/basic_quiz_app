import 'package:basic_quiz_app/model/chosen_answer.dart';
import 'package:basic_quiz_app/model/question.dart';
import 'package:basic_quiz_app/model/summary.dart';

class Quiz {
  List<QuizQuestion>? questions;

  int currentIndex = -1;

  Map<String, ChosenAnswer?> answers = {};

  Quiz({required this.questions});

  QuizQuestion? getNextQuestion() {
    currentIndex++;
    if (currentIndex < questions!.length) {
      return questions![currentIndex];
    }
    return null;
  }

  int getTotal() {
    return questions!.length;
  }

  int getCurrent()
  {
    return currentIndex+1;
  }

  void answerQuestion(int optionChosen) {
    var currentQuestion = questions![currentIndex];
    answers[currentQuestion.id!] = ChosenAnswer(choice: optionChosen, isCorrect: currentQuestion.answer == optionChosen);
  }

  QuizSummary? getSummary() {
    var total = answers.length;
    var correctCount = answers.values.where((element) => element!.isCorrect!).length;

    var summary = QuizSummary(noQuestionsAtempted: total, noOfCorrectAnswers: correctCount);
    return summary;
  }
}
