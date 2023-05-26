import 'package:flutter/material.dart';

class ButtonTypes extends StatelessWidget {
  const ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            //backgroundColor: MaterialStateProperty.all(Colors.red),
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.orange;
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.yellow;
              }
              return null;
            }),
            foregroundColor: MaterialStateProperty.all(Colors.purple),
            overlayColor:
                MaterialStateProperty.all(Colors.green.withOpacity(0.5)),
          ),
          child: Text('Text Button'),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Text Button Icon'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text('Elevated Button'),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text(
            'Elevated with Icon',
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text('Outlined button'),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Outlined Button with Text'),
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
            side: BorderSide(color: Colors.purple, width: 2),
          ),
        ),
      ],
    );
  }
}
