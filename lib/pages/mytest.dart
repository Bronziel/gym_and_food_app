import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_svg/flutter_svg.dart';

class testwidget extends StatefulWidget {
  const testwidget({Key? key}) : super(key: key);

  @override
  _testwidget createState() => _testwidget();
}

class _testwidget extends State<testwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Recepie List')),
        body: SingleChildScrollView(
            child: Container(
                child: SvgPicture.asset(
          'Images/radlogga.svg',
        )

                // Add your widget tree here
                )));
  }
}
