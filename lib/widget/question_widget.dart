import 'package:basic_quiz_app/model/question_type.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../model/question.dart';

class QuestionWidget extends StatelessWidget {
  final Question? question;
const QuestionWidget({ Key? key, required this.question }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 500,
      height: 200,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: getQuestionModel(),
            )
          ],
        ),
      ),
    );
  }

  Widget getQuestionModel()
  {
    if(question!.type==QuestionType.text)
    {
      return 
          getQuestionStringFormat(question!.caption!);
        
    }
    else if(question!.type==QuestionType.image)
    {
      return 
          Image.network(question!.url!,width: 100);
    }
    else if(question!.type==QuestionType.audio)
    {
       return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          getPlayer(question!.url!)
         ],
       );
    }
    return const CircularProgressIndicator();
  }

  Widget getQuestionStringFormat(String value)
  {
    return Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),);
  }
  
  Widget getPlayer(String value)
  {
    var  player=AudioPlayer();
   player.setUrl(value);
    return GestureDetector(onTap:() => player.play(),onDoubleTap: () => player.pause(),child: const Icon(Icons.play_circle_rounded,size: 50,));
  }
}