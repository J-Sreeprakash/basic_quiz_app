class Question {
    Question({
        required this.id,
        required this.question,
        required this.options,
        required this.answer,
        required this.tags,
    });

    final String? id;
    final Tion? question;
    final List<Options> options;
    final num? answer;
    final List<String> tags;

    factory Question.fromJson(Map<String, dynamic> json){ 
        return Question(
            id: json["id"],
            question: json["question"] == null ? null : Tion.fromJson(json["question"]),
            options: json["options"] == null ? [] : List<Options>.from(json["options"]!.map((x) => Tion.fromJson(x))),
            answer: json["answer"],
            tags: json["tags"] == null ? [] : List<String>.from(json["tags"]!.map((x) => x)),
        );
    }

}

class Tion {
    Tion({
        required this.type,
        required this.caption,
        required this.url,
    });

    final String? type;
    final String? caption;
    final String? url;

    factory Tion.fromJson(Map<String, dynamic> json){ 
        return Tion(
            type: json["type"],
            caption: json["caption"],
            url: json["url"],
        );
    }

}
class Options {
    Options({
        required this.type,
        required this.caption,
        required this.url,
    });

    final String? type;
    final String? caption;
    final String? url;

    factory Options.fromJson(Map<String, dynamic> json){ 
        return Options(
            type: json["type"],
            caption: json["caption"],
            url: json["url"],
        );
    }

}
