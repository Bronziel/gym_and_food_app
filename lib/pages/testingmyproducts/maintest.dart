import 'package:flutter/material.dart';
import 'form_widget.dart';

class MaintestPage extends StatelessWidget {
  const MaintestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Button Form',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Floating Button Form'),
        ),
        body: Center(
          child: Text('Press the floating button to open the form.'),
        ),
        floatingActionButton: MyFormWidget(),
      ),
    );
  }
}
