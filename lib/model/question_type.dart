enum QuestionType { text, image, audio }

QuestionType fromQuestionTypeString(String type) {
  if (type == "text") {
    return QuestionType.text;
  } else if (type == "audio") {
    return QuestionType.audio;
  } else if (type == "image") {
    return QuestionType.image;
  }

  return QuestionType.text;
}
