import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  Container createContainer(String word, Color colour, {double margin = 0}) {
    return Container(
      width: 75,
      height: 75,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: margin),
      color: colour,
      child: Text(
        word,
        style: const TextStyle(fontSize: 48),
      ),
    );
  }

  Row createDartRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        createContainer('D', Colors.orange),
        createContainer('A', Colors.orange.shade300),
        createContainer('R', Colors.orange.shade200),
        createContainer('T', Colors.orange.shade100),
      ],
    );
  }

  Column createTrainColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: createContainer('R', Colors.orange.shade200, margin: 30),
        ),
        Expanded(
          child: createContainer('A', Colors.orange.shade300, margin: 30),
        ),
        Expanded(
          child: createContainer('I', Colors.orange.shade400, margin: 30),
        ),
        Expanded(
          child: createContainer('N', Colors.orange, margin: 30),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Training'),
          backgroundColor: Colors.cyan,
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
          color: Colors.white30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              createDartRow(),
              Expanded(
                child: createTrainColumn(),
              ),
            ],
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

  List<Widget> get issuedContainer {
    return [
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      Flexible(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
      ),
      Flexible(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.purple,
        ),
      ),
      Flexible(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.orange,
        ),
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 1,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 3,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
    ];
  }

  Widget containerTraining() {
    return Center(
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
                color: Colors.black, offset: Offset(20, 20), blurRadius: 20),
          ],
        ),
        child: const FlutterLogo(size: 128),
      ),
    );
  }
}
