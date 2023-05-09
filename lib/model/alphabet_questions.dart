class AlphabetQuestions {
  String? questions;
  String? imgQuestions;
  String? audioQuestions;
  String? caption;
  

  List<String>? stringOptions;
  List<String>? imageOptions;
  List<String>? audioOptions;
  List<dynamic>? tags;

  int? answer;


  AlphabetQuestions(
      {this.questions,
      this.imgQuestions,
      this.audioQuestions,
      this.stringOptions,
      this.imageOptions,
      this.audioOptions,
      this.answer,
      this.caption,
      this.tags,});
}
