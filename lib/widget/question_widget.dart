import 'package:flutter/material.dart';

import '../model/question.dart';


class QuestionWidget extends StatelessWidget {
  final Tion? tion;
const QuestionWidget({ Key? key , this.tion }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 250,
      width: 500,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 90),
               child: getStringFormat('How many days in a week ?'),
             )
             
          ],
        ),
      ),
    );
  }



Widget getStringFormat(String value)
{
  return Text(value,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w900),);
}

Widget getQuestionFormat(List<Question> question)
{
   if(tion!.type=='text')
   {
    return Text(tion!.caption!);
   }
   else if(tion!.type=='audio')
   {
    return const Icon(Icons.play_arrow_rounded);
   }
   else if(tion!.type=='image')
   {
    return Image.network(tion!.url!);
   }
   return const CircularProgressIndicator();
}
}