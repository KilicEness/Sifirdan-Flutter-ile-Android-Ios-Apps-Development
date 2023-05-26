import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('myhomepage build run');
    return Scaffold(
      appBar: AppBar(
        title: Text('My Counter App'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          MyNewTextWidget(),
          Text(
            _counter.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('button clicked and count is $_counter');
          increaseCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void increaseCounter() {
    setState(() {
      _counter++;
    });
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Pushing button time',
      style: TextStyle(fontSize: 24),
    );
  }
}
