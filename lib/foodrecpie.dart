import 'package:flutter/material.dart';
import 'dart:io';

class foodrecpie extends StatefulWidget {
  const foodrecpie({Key? key}) : super(key: key);

  @override
  _foodrecpieState createState() => _foodrecpieState();
}

class _foodrecpieState extends State<foodrecpie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Recepie List')),
        body: SingleChildScrollView(
            child: Container(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.file(File('Images/plants.jpg')),
                    Image.file(File('Images/watermelon.jpg'))
                    //child: Image.asset('Images/plants.jpg'),
                    //child: Image.network(
                    ///'https://cdn.britannica.com/16/99616-050-72CD201A/Colosseum-Rome.jpg'))
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Image.file(File('Images/plants.jpg')),
                    Image.file(File('Images/watermelon.jpg'))
                    //child: Image.asset('Images/plants.jpg'),
                    //child: Image.network(
                    ///'https://cdn.britannica.com/16/99616-050-72CD201A/Colosseum-Rome.jpg'))
                  ],
                ),
              ),
            ],
          ),
        )
            // Add your widget tree here
            ));
  }
}
