import 'package:basic_quiz_app/views/welcome_screen.dart';
import 'package:flutter/material.dart';

class QuizzApp extends StatelessWidget {
const QuizzApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quizz App",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const WelcomeScreen(),

    );
  }
}