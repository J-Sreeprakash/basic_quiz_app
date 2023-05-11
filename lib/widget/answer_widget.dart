
import 'package:flutter/material.dart';

import '../model/question.dart';

class AnswerWidget extends StatelessWidget {
  final Options? options;
  const AnswerWidget({Key? key, this.options}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 500,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: getAnswer('a) 8'),
            ),
            getAnswer('b) 7'),
            getAnswer('c) 5'),
            getAnswer('d) 2')
          ],
        ),
      ),
    );
  }

  Widget getAnswer(String value) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 500,
        child: Card(
          elevation: 5,
          color: Colors.grey,
            child: Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        )),
      ),
    );
  }

  Widget getAnswerFormat() {
    if (options!.type == 'text') {
      return Text(options!.caption!);
    } else if (options!.type == 'image') {
      return Image.network(options!.url!);
    } else if (options!.type == 'audio') {
      return const Icon(Icons.play_arrow_rounded);
    }
    return const CircularProgressIndicator();
  }
}
