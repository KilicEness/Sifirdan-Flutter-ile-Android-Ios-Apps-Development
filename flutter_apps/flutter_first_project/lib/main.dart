import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    offset: Offset(20, 20),
                    blurRadius: 20),
              ],
            ),
            child: const FlutterLogo(size: 128),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('clicked');
          },
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.account_circle_rounded,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
