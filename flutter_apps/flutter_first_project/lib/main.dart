import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
          backgroundColor: const Color.fromARGB(255, 28, 100, 31),
        ),
        body: Text(
          'Hello World',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('clicked');
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.red,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
