import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({Key? key}) : super(key: key);

  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';
  int _portionSize = 1;
  List<String> _steps = ['', '', ''];
  List<Map<String, String>> _ingredients = [
    {'name': '', 'amount': ''},
    {'name': '', 'amount': ''},
    {'name': '', 'amount': ''},
  ];
  List<String> _imageUrls = ['', ''];

  Future<void> _addRecipe() async {
    final recipe = {
      'title': _title,
      'description': _description,
      'portionSize': _portionSize,
      'steps': _steps,
      'ingredients': _ingredients,
      'imageUrls': _imageUrls,
    };

    final docRef = FirebaseFirestore.instance.collection('recipes').doc();
    await docRef.set(recipe);

    print('Recipe added successfully');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Recipe'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              // Title field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value!;
                },
              ),
              // Description field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value!;
                },
              ),
              // Portion Size field
              TextFormField(
                decoration: const InputDecoration(labelText: 'Portion Size'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a portion size';
                  }
                  return null;
                },
                onSaved: (value) {
                  _portionSize = int.parse(value!);
                },
              ),
              // Steps fields
              for (int i = 0; i < _steps.length; i++)
                TextFormField(
                  decoration: InputDecoration(labelText: 'Step ${i + 1}'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a step';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _steps[i] = value!;
                  },
                ),
              // Ingredients fields
              for (int i = 0; i < _ingredients.length; i++)
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Ingredient ${i + 1} Name'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a name';
                          }
                          return null;
                                              },
                    onSaved: (value) {
                      _ingredients[i]['name'] = value!;
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: 'Amount'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an amount';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _ingredients[i]['amount'] = value!;
                    },
                  ),
                ),
              ],
            ),
          // Image URLs fields
          for (int i = 0; i < _imageUrls.length; i++)
            TextFormField(
              decoration: InputDecoration(labelText: 'Image URL ${i + 1}'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an image URL';
                }
                return null;
              },
              onSaved: (value) {
                _imageUrls[i] = value!;
              },
            ),
          // Submit button
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                _addRecipe();
                Navigator.pop(context);
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    ),
  ),
);

