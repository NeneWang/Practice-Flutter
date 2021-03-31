import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challanging, Hard }
enum Affortability { Affordable, Pricey, Luxurious }

class Meal {
  final String id;
  final List<String> categoryIds;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affortability affortability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  Meal(
      {@required this.id,
      @required this.categoryIds,
      @required this.title,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.steps,
      @required this.duration,
      @required this.complexity,
      @required this.affortability,
      @required this.isGlutenFree,
      @required this.isLactoseFree,
      @required this.isVegan,
      @required this.isVegetarian});
}
