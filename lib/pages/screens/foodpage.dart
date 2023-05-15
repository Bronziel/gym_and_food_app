import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../image_page.dart';
import 'dart:io';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int _currentIndex = 0;
  final List<Map<String, String>> imgList = [
    {
      'name': 'plants',
      'url': 'Images/plants.jpg',
    },
    {
      "name": "Slushie",
      "url":
          'https://www.busylittlekiddies.com/wp-content/uploads/Slushie-recipe.jpg'
    },
    {
      'name': 'Food',
      'url':
          'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg'
    },
    {
      "name": "Watermelon",
      "url": "Images/watermelon.jpg",
    }
  ];
  final Set<int> localIndices = {0, 3};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food')),
      body: Column(
        children: [
          Expanded(
            child: CarouselSlider.builder(
              itemCount: imgList.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                if (localIndices.contains(index)) {
                  return Container(
                    child: Center(
                      child: Image.file(
                        File(imgList[index]['url']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                } else {
                  return Container(
                    child: Center(
                      child: Image.network(
                        imgList[index]['url']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
              },
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImagePage(
                    imageUrl: imgList[_currentIndex]['url']!,
                  ),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              minimumSize:
                  Size(double.infinity, 50), // set a fixed height of 50
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                imgList[_currentIndex]['name']!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
