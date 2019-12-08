import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:opentrivia/models/question.dart';
import 'package:opentrivia/resources/api_provider.dart';
class Category{
  final String name;
  final List<Question> questions;
  final dynamic icon;
  Category({this.name, this.icon, this.questions});

  factory Category.fromJson(Map<String, dynamic> parsedJson) {
    return Category (
      name: parsedJson['category'],
      questions: parsedJson['Perguntas'],
      icon: 
      parsedJson['category'] == 'Ciências'   ? FontAwesomeIcons.microscope :
      parsedJson['category'] == 'Português'  ? FontAwesomeIcons.bookOpen :
      parsedJson['category'] == 'Matemática' ? FontAwesomeIcons.sortNumericUp : FontAwesomeIcons.monument
    );
  }

}