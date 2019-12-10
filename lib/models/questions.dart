import 'package:opentrivia/models/question.dart';

class Questions {
  final String category;
  final List<Question> perguntas;

  Questions({this.category, this.perguntas});

  factory Questions.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['Perguntas'] as List;
    List<Question> questions = list.map((p) => Question.fromJson(p)).toList();
    return Questions (
      category: parsedJson['category'],
      perguntas: questions
    );
  }
}