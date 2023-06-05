import 'package:flutter/material.dart';

class UsageCardListtile extends StatelessWidget {
  const UsageCardListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card and List tile'),
      ),
      body: Center(
        child: ListView(  //You can use also ListView but its expect children from you.
          children: [
            Column(
              children: [
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
                singleListElement(),
              ],
            ),
            Text('Hey!'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }

//If my widgets do not fit on the screen you can use this option
  SingleChildScrollView singleChildUse() {
    return SingleChildScrollView(
      child: Column(
        children: [
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
          singleListElement(),
        ],
      ),
    );
  }

  Column singleListElement() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.amber,
          elevation: 12,
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('Title'),
            subtitle: Text('Sub Title'),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 60,
          endIndent: 60,
        ),
      ],
    );
  }
}
