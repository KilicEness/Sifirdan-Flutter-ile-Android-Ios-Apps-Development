import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/image_widgets.dart';
import 'package:flutter_basic_widget/my_counter_page.dart';

void main() {
  debugPrint('main method run');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('myapp build run');
    return MaterialApp(
      title: 'My Counter App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Examples'),
        ),
        body: ImageExamples(),
      ),
    );
  }
}
