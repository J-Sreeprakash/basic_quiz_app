import 'package:basic_quiz_app/views/question_answer_screen.dart';
import 'package:flutter/material.dart';

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
          Image.network(
              "https://media3.giphy.com/media/Ji3lMhjcSiWdFfKJJf/giphy.gif?cid=ecf05e47ovpaj9v1h02k7fnseymwyge18t4lytnd79je1rgn&ep=v1_gifs_related&rid=giphy.gif&ct=g"),
          Padding(
            padding: const EdgeInsets.all(50),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QuestionAnswerScreen(),
                      ));
                },
                child: const Text(
                  " Start ",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                )),
          ),
          Center(
            child: Image.network(
                "https://media3.giphy.com/media/Ji3lMhjcSiWdFfKJJf/giphy.gif?cid=ecf05e47ovpaj9v1h02k7fnseymwyge18t4lytnd79je1rgn&ep=v1_gifs_related&rid=giphy.gif&ct=g"),
          ),
        ],
      ),
    );
  }
}
