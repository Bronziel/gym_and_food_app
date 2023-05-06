import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:io';
import 'image_page.dart';
import 'gym_page.dart';
import 'recipe.dart';
import 'foodpage.dart';
import 'foodrecpie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym and Food App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gym and Food App')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FoodPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                minimumSize: const Size(double.infinity, 64.0),
                primary: Colors.orange,
              ),
              child: const Text(
                'Food',
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GymPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                minimumSize: const Size(double.infinity, 64.0),
                primary: Colors.green,
              ),
              child: const Text(
                'Gym',
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const foodrecpie()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                minimumSize: const Size(double.infinity, 64.0),
                primary: Color.fromARGB(255, 175, 116, 76),
              ),
              child: const Text(
                'Recepielist',
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
