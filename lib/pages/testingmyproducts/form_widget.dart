import 'package:flutter/material.dart';

class MyFormWidget extends StatefulWidget {
  @override
  _MyFormWidgetState createState() => _MyFormWidgetState();
}

class _MyFormWidgetState extends State<MyFormWidget> {
  // Define variables to store form data
  String title = '';
  String description = '';
  String portionSize = '';
  String steps = '';
  String ingredients = '';

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title text field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                    ),
                    onChanged: (value) {
                      setState(() {
                        title = value;
                      });
                    },
                  ),
                  SizedBox(height: 10),

                  // Description text field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Description',
                    ),
                    onChanged: (value) {
                      setState(() {
                        description = value;
                      });
                    },
                  ),
                  SizedBox(height: 10),

                  // Portion size text field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Portion Size',
                    ),
                    onChanged: (value) {
                      setState(() {
                        portionSize = value;
                      });
                    },
                  ),
                  SizedBox(height: 10),

                  // Steps text field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Steps',
                    ),
                    onChanged: (value) {
                      setState(() {
                        steps = value;
                      });
                    },
                  ),
                  SizedBox(height: 10),

                  // Ingredients text field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Ingredients',
                    ),
                    onChanged: (value) {
                      setState(() {
                        ingredients = value;
                      });
                    },
                  ),
                  SizedBox(height: 10),

                  // Save button
                  ElevatedButton(
                    onPressed: () {
                      // Perform actions with the form data
                      // For example, you can print the values
                      print('Title: $title');
                      print('Description: $description');
                      print('Portion Size: $portionSize');
                      print('Steps: $steps');
                      print('Ingredients: $ingredients');

                      // Close the bottom sheet
                      Navigator.pop(context);
                    },
                    child: Text('Save'),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Icon(Icons.add),
    );
  }
}
