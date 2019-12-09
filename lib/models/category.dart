import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Category{
  final int id;
  final String name;
  final dynamic icon;

  Category(this.id, this.name,{this.icon,});

}

final List<Category> categories = [
  Category(9, "Ciências", icon: FontAwesomeIcons.microscope),
  Category(10, "Matemática", icon: FontAwesomeIcons.sortNumericUp),
  Category(11, "Português", icon: FontAwesomeIcons.bookOpen)
];