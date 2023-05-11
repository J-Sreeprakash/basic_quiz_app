import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:basic_quiz_app/model/question_type.dart';
import 'package:flutter/material.dart';

import '../model/question.dart';

class QuestionWidget extends StatelessWidget {
  final Question? question;
const QuestionWidget({ Key? key, required this.question }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 500,
      height: 400,
      child: Card(
        child: Column(
          children: [
            getQuestionModel()
          ],
        ),
      ),
    );
  }

  Widget getQuestionModel()
  {
    if(question!.type==QuestionType.text)
    {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getQuestionStringFormat(question!.caption!),
        ],
      );
    }
    else if(question!.type==QuestionType.image)
    {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(question!.url!,width: 250,height: 250),
        ],
      );
    }
    else if(question!.type==QuestionType.audio)
    {
       return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           AudioWidget.network(child: Icon(Icons.play_circle), url: question!.url!),
         ],
       );
    }
    return CircularProgressIndicator();
  }

  Widget getQuestionStringFormat(String value)
  {
    return Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),);
  }
}