import 'package:flutter/material.dart';

class ListViewLayoutProblems extends StatelessWidget {
  const ListViewLayoutProblems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview Layout Problems'),
      ),
      body: Container(
        height: 200,
        child: Row(
          children: [
            Text('Started'),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    width: 200,
                    color: Colors.orange.shade400,
                  ),
                ],
              ),
            ),
            Text('Ended'),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
      ),
    );
  }

  Column listIntoColumn() {
    return Column(
      children: [
        Text('Started'),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                height: 200,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 200,
                color: Colors.orange.shade400,
              ),
            ],
          ),
        ),
        Text('Ended'),
      ],
    );
  }
}
