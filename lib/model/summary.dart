class QuizSummary {
  int? noQuestionsAtempted;

  int? noOfCorrectAnswers;

  QuizSummary({this.noQuestionsAtempted, this.noOfCorrectAnswers});
  
  num getPercentage()
{
  return noOfCorrectAnswers!/noQuestionsAtempted!*100;
}
}
