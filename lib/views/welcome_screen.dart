import 'package:basic_quiz_app/model/quiz.dart';
import 'package:basic_quiz_app/views/question_answer_screen.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../service/quizz_service.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WebsafeSvg.asset('assets/front.svg'),
          Padding(
            padding: const EdgeInsets.all(50),
            child: ElevatedButton(
                onPressed: ()  async{

                  var quizQuestions = await getQuestionsFromService();
                  var quiz = Quiz(questions: quizQuestions);


                  // ignore: use_build_context_synchronously
                  Navigator.push(
                      context,
                      MaterialPageRoute(                        
                        builder: (context) => QuestionAnswerScreen(quiz: quiz,),
                      ));
                },
                child: const Text(
                  "Start",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                )),
          ),
          
        ],
      ),
    );
  }
}
