import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:opentrivia/models/category.dart';
import 'package:opentrivia/models/question.dart';


Future<List<Question>> getQuestions(Category category) async {

  // List<Map<String, dynamic>> questions = List<Map<String,dynamic>>.from(json.decode(res.body)["results"]);
  // return Question.fromData(questions);

  String jsonQ = await rootBundle.loadString('assets/data/$category.json');
  final jsonResponse = json.decode(jsonQ);
  Category categoria = Category.fromJson(jsonResponse);

  return categoria.questions;
}

 Future<List<Category>> getCategories() async {
  String ciencia = await rootBundle.loadString('assets/data/ciencias.json');
  String matematica = await rootBundle.loadString('assets/data/matematica.json');
  String portugues = await rootBundle.loadString('assets/data/portugues.json');
  
  final jsonCiencia = json.decode(ciencia);
  final jsonMatematica = json.decode(matematica);
  final jsonPortugues = json.decode(portugues);

  final List<Category> categories = [
    Category.fromJson(jsonCiencia),
    Category.fromJson(jsonMatematica),
    Category.fromJson(jsonPortugues),
  ];

  return categories;
}
