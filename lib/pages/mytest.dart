import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';

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
          child: Container(
            child: SvgPicture.asset(
              'Images/radloggaweb.svg',
            ),
            // Add your widget tree here
          ),
        ),
      ),
    );
  }
}
