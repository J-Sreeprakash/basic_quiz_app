import 'package:flutter/material.dart';

import '../widget/answer_widget.dart';
import '../widget/question_widget.dart';

class QuestionAnswerScreen extends StatefulWidget {
  const QuestionAnswerScreen({Key? key}) : super(key: key);

  @override
  _QuestionAnswerScreenState createState() => _QuestionAnswerScreenState();
}

class _QuestionAnswerScreenState extends State<QuestionAnswerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(' 1 '),
          Icon(Icons.psychology_alt_outlined),
          Text(' 10 ')
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
