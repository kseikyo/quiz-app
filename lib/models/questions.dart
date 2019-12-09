import 'package:opentrivia/models/question.dart';

class Questions {
  final String category;
  final List<Question> perguntas;

  Questions({this.category, this.perguntas});

  factory Questions.fromJson(Map<String, dynamic> parsedJson) {
    return Questions (
      category: parsedJson['category'],
      perguntas: Question.fromJson(parsedJson['perguntas'])
    );
  }
}