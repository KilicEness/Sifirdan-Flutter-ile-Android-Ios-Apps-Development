import 'package:flutter/material.dart';
import 'package:flutter_scrools_up/card_listtile.dart';
import 'package:flutter_scrools_up/listview_usage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ListViewUsage(),
    );
  }
}