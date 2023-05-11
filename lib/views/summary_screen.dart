import 'package:basic_quiz_app/views/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('Summay')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: getScoreSummary(context),
      ),
    );
  }

  Widget getScoreSummary(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 700,
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '90% Score',
                style: TextStyle(
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
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'You attempt 10 Questions and ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'You got 8 answer is correct.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Share with us',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
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
