import 'package:basic_quiz_app/model/option_type.dart';
import 'package:basic_quiz_app/model/question.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


typedef OptionCallback = void Function(int value);

class AnswerWidget extends StatelessWidget {
 final Option? option;
 final int? index;

 final OptionCallback? onTapped;

const AnswerWidget({ Key? key ,required this.option,required this.index,required this.onTapped}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 500,
       child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: getAnswerModel(),
            )
          ],
        ),
      ),
    );
  }

Widget getAnswerModel()
{
  if(option!.type==OptionType.text)
  {
    return 
        ElevatedButton(
            onPressed: () {
              onTapped!(index!);
            },
            child: getAnswerStringFormat(option!.caption!));
  }
  else if(option!.type==OptionType.image)
  {
    return 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(option!.url!,width: 100,),
                 ElevatedButton(
            onPressed: () {
              onTapped!(index!);
            },
            child: getAnswerStringFormat(option!.caption!))
              ],
            );
  }
  else if(option!.type==OptionType.audio)
  {
    return 
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              getPlayer(option!.url!),
               ElevatedButton(
            onPressed: () {
              onTapped!(index!);
            },
            child: getAnswerStringFormat(option!.caption!))
             ],
           );
  }
  return const CircularProgressIndicator();
}

Widget getAnswerStringFormat(String value)
{
  return Text(value,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w700));
}
 Widget getPlayer(String value)
  {
    var  player=AudioPlayer();
   player.setUrl(value);
    return GestureDetector(onTap:() => player.play(),onDoubleTap: () => player.pause(),child: const Icon(Icons.play_circle_rounded,size: 50,));
  }
  
}