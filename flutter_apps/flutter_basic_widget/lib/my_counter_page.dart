import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  _MyCounterPageState createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
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
