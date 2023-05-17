import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym_and_food_app/pages/testingmyproducts/form_widget.dart';
import 'testingmyproducts/maintest.dart';
import 'gtpforms/add_recipe_page.dart';

class TestwidgetPage extends StatefulWidget {
  const TestwidgetPage({Key? key}) : super(key: key);

  @override
  _TestwidgetPage createState() => _TestwidgetPage();
}

class _TestwidgetPage extends State<TestwidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recepie List')),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SvgPicture.asset(
                'Images/radloggaweb.svg',
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MaintestPage()),
                  );
                },
                child: Text('Elevated Button'),
              ),
            ],
          ),
          // Add your widget tree here
        ),
      ),
    );
  }
}
