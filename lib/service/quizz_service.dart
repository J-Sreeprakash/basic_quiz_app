

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/question.dart';

//url for API Result
const quizzApiUrl='https://storage.googleapis.com/quizdb/quiz.json';

//create a future function 
Future<List<QuizQuestion>>getQuestionsFromService()async
{
  var questions=<QuizQuestion>[];
  var dio=Dio();
  var response=await dio.get(quizzApiUrl);
  if(response.statusCode==200)
  {
    var questionsJson=response.data;
    for (var questionJson in questionsJson) {
      try{
        var questionJsonObj=QuizQuestion.fromJson(questionJson);
        questions.add(questionJsonObj);
      }
      catch (error) {
        debugPrint('Exception during parsing $error');
      }
    }
  }
  return questions;
}