import 'package:flutter/material.dart';
import 'dart:io';

class ImagePage extends StatelessWidget {
  final String imageUrl;

  const ImagePage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food')),
      body: Center(
        child: _isNetworkUrl(imageUrl)
            ? Image.network(imageUrl)
            : Image.file(File(imageUrl)),
      ),
    );
  }

  bool _isNetworkUrl(String url) {
    return url.startsWith('http://') || url.startsWith('https://');
  }
}
