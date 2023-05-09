import 'package:basic_quiz_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class QuizApp extends StatelessWidget {
const QuizApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      title: 'Quiz App',
      theme: ThemeData.dark(),
      home: const WelcomeScreen(),
    );
  }
}