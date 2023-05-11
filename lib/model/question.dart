import 'package:basic_quiz_app/model/option_type.dart';
import 'package:basic_quiz_app/model/question_type.dart';

class QuizQuestion {
  QuizQuestion({
    required this.id,
    required this.question,
    required this.options,
    required this.answer,
    required this.tags,
  });

  final String? id;
  final Question? question;
  final List<Option> options;
  final int? answer;
  final List<String> tags;

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      id: json["id"],
      question: json["question"] == null ? null : Question.fromJson(json["question"]),
      options: json["options"] == null ? [] : List<Option>.from(json["options"]!.map((x) => Option.fromJson(x))),
      answer: json["answer"],
      tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
    );
  }
}

class Question {
  Question({
    required this.type,
    required this.caption,
    required this.url,
  });

  final QuestionType? type;
  final String? caption;
  final String? url;

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      type: fromQuestionTypeString(json["type"]),
      caption: json["caption"],
      url: json["url"],
    );
  }
}

class Option {
  Option({
    required this.type,
    required this.caption,
    required this.url,
  });

  final OptionType? type;
  final String? caption;
  final String? url;

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      type: fromOptionTypeString(json["type"]),
      caption: json["caption"],
      url: json["url"],
    );
  }
}
