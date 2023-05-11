

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../model/question.dart';

//url for API Result
const quizzApiUrl='https://ff771a6f17a163c2034bb2246c6b86ab7b11ed546fffe17e793a5a6-apidata.googleusercontent.com/download/storage/v1/b/quizdb/o/quiz.json?jk=ARTXCFFzib4KnDv-BkkdVw8fCm48AFDTRzaeHsUjMtSNqQnHkRQNfN8-1OjC9zsq34hPJPxS0AriywvD3w35hZvOaXpotEWoDbfXTs5yY3Jm1san9SGk-67vM5b7Rk2OFpGjFBrjW7zW9LlQtMxMRB6O7Ey-hsNbDpsBOHSM7slN2LHBpdhKMfhUTdRjE5L4wI1YU4xCGxeMFvumDcRfXCmjR0Jim6DUV5Am1p7T7P-bkkL9wVJryEuX5yyx7BhZPjHkRmm0LWKsWWwoGZ8hBUQtFFY-hM3rDtV127Dv0Ooxeosxdqo4TsnphQt_DHGb5-XBSFrjVFUgvNhafT5dcAOVQHqmIbixi4NilUByIyZ5c5esCuQpF8Ms5Renb6peQ2oZQaoyDN0xWzZLGiOxNsYgjoCX9W-2cObjIiVDn2nPjljWGeD2tsRB1LAOknstRcQFMQjbbFh9VxicDWeu5PkjtRqiRBr4tFprP33k_36bMBQuynYMFz8LpHmBy5KgS_aFDTAqtVMvBdY_AM9Y5tHRkes12cWnobVkVtqfWp7iWtk-_3ZfZLDkNpu_09FjM6EYb1zlhwPlBLkhNlWMaQA22ZMe-50mHfrd9n7OoT7ZvcQc57Hmnu5i8rtABi1grc5m2_40H_Z2_Hj4w3_zJVyDb8qvxlFg0K0HzuNipRZnkE-CuYrohlUQSjC4Ipa7NnqlDyRSw_-ZBZuwWPomI1IYIOgxS5UrbGg6RQrEIi3qeMN65XDWUpsWT-tMfmdUqYKGdr6S_xDvcuN8UK1yBA6y9_DLq6SWLGsIPv5DXyPRHRknoxBjv0VSFwPUPTP00O8jCqtsVX29P4d9cHR7hpmQPGK0RSVISJGODbVJKh9AxENg49LJCQGYkfQbZWH4uo7D7cVksW-2J7GcBn8Nr0DsWim56iMIl1tTZAebdbFdYk-KEWwDlTXwJZ9rme0dRzgsS7rjtjFUHUqfK4sUJAYQJl75zuzyDQp2k4F6eCgPyE-V6dZJxZd9kmfuVGQXnLZJvAUK90my8nVm6WdTPzw5W8FDwMb9zUtc7YplRwjOAopE9CXi1skNkKV3kxs6ZTtHUvAtASrqFamCA1SCjR4wacKPW8kvJXMAOjZlS_hycgNLuIzu9NISxkcfQkV0bCARGyztY2NdVECiyy3ZuPAWsIb0g6VP4M6zk69fgfk2cMprwUYAkFWLX9udnCo3r0xuCOWAYDbgGZTVQRGa6QZJ9HoMgUGL7WPzkCxofiQ8IdSdvwI5O0b6uLsJ5ob2gNrgPcBp-Fc9A4vI0H4od8hJ&isca=1';

//create a future function 
Future<List<Question>>getQuestionsFromService()async
{
  var questions=<Question>[];
  var dio=Dio();
  var response=await dio.get(quizzApiUrl);
  if(response.statusCode==200)
  {
    var questionsJson=response.data;
    for (var questionJson in questionsJson) {
      try{
        var questionJsonObj=Question.fromJson(questionJson);
        questions.add(questionJsonObj);
      }
      catch (error) {
        debugPrint('Exception during parsing $error');
      }
    }
  }
  return questions;
}