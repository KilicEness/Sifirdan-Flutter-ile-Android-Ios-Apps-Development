import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/dropdown_button.dart';

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
      theme: ThemeData(
          primarySwatch: Colors.purple,
          outlinedButtonTheme:
              OutlinedButtonThemeData(style: OutlinedButton.styleFrom()),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Examples'),
        ),
        body: DropDownButtonUsage(),
      ),
    );
  }
}
