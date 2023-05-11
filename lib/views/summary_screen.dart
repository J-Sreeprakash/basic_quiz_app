import 'package:basic_quiz_app/model/summary.dart';
import 'package:basic_quiz_app/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SummaryScreen extends StatelessWidget {
  final QuizSummary? quizSummary;
  const SummaryScreen({Key? key, required this.quizSummary}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('Summary')),
      ),
      body:  getScoreSummary(context),
    );
  }

  Widget getScoreSummary(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Card(
        elevation: 8,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                  width: 500,
                  height: 200,
                  child: WebsafeSvg.asset('assets/certificate.svg')),
            ),


            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Congrats !',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              ),
            ),


             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${quizSummary!.getPercentage().toStringAsFixed(1)} Score',
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    color: Colors.indigo),
              ),
            ),


            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Quizz completed Successfully',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            
            
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'You attempt ${quizSummary!.noQuestionsAtempted} Questions and',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            
            
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'You got ${quizSummary!.noOfCorrectAnswers} answer is correct.',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),


             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Share with us',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.indigo,
                    ))
              ],
            ),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen(),
                    )),
                child: const Text('Home',style: TextStyle(fontSize: 15),))
          ],
        ),
      ),
    );
  }


}
