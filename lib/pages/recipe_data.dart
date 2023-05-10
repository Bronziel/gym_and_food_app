import 'dart:convert';
import 'package:http/http.dart' as http;
import 'recipe.dart';

Future<List<Recipe>> fetchRecipes() async {
  final response = await http.get(Uri.parse(
      'http://127.0.0.1:5001/cookbook-895e3/us-central1/api/recipes'));

  print('response: $response');

  final jsonData = json.decode(response.body);
  print('jsonData: $jsonData');

  List<Recipe> recipes = [];
  for (var recipeJson in jsonData) {
    Recipe recipe = Recipe.fromJson(recipeJson);
    recipes.add(recipe);
  }

  return recipes;
}

List<Recipe> getInitialRecipes() {
  List<Recipe> initialRecipes = [
    Recipe(
      title: 'Recipe 1',
      description: 'This is a description of Recipe 1',
      portionSize: 4,
      steps: [
        'Step 1: Do this',
        'Step 2: Do that',
      ],
      ingredients: [
        {'name': 'Rosemary', 'amount': '100g'},
        {'name': 'Thyme', 'amount': '50g'},
      ],
      imageUrls: [
        'Images/watermelon.jpg',
        'https://e0.pxfuel.com/wallpapers/748/615/desktop-wallpaper-awesome-pineapple-high-resolution-new-pineapple-tumblr.jpg',
      ],
    ),
    Recipe(
      title: 'Recipe 2',
      description: 'This is a description of Recipe 2',
      portionSize: 2,
      steps: [
        'Step 1: Do this',
        'Step 2: Do that',
        'Step 3: Do something else',
      ],
      ingredients: [
        {'name': 'Basil', 'amount': '50g'},
        {'name': 'Garlic', 'amount': '3 cloves'},
        {'name': 'Tomatoes', 'amount': '2'},
      ],
      imageUrls: [
        //'https://www.example.com/images/recipe2.jpg',
      ],
    ),
  ];

  return initialRecipes;
}
