import 'package:basic_quiz_app/model/question.dart';
import 'package:basic_quiz_app/model/quiz.dart';
import 'package:flutter/material.dart';

import '../widget/answer_widget.dart';
import '../widget/question_widget.dart';

class QuestionAnswerScreen extends StatefulWidget {

  final Quiz? quiz;

  const QuestionAnswerScreen({Key? key, required this.quiz}) : super(key: key);

  @override
  _QuestionAnswerScreenState createState() => _QuestionAnswerScreenState();
}

class _QuestionAnswerScreenState extends State<QuestionAnswerScreen> {

  QuizQuestion? quizQuestion;

  @override
  void initState() {
    quizQuestion = widget.quiz!.getNextQuestion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text( widget.quiz!.getCurrent().toString()),
          const Icon(Icons.psychology_alt_outlined),
            Text( widget.quiz!.getTotal().toString()),
        ],
      )),
      body: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: QuestionWidget(),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: AnswerWidget(),
          )
        ],
      ),
    );
  }
}
