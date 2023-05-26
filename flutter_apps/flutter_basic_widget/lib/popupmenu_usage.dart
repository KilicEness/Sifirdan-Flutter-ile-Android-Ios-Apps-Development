import 'package:flutter/material.dart';

class PopupmenuUsage extends StatefulWidget {
  const PopupmenuUsage({super.key});

  @override
  State<PopupmenuUsage> createState() => _PopupmenuUsageState();
}

class _PopupmenuUsageState extends State<PopupmenuUsage> {
  String _choosenCity = 'Ankara';
  List<String> colours = ['Blue', 'Green', 'Red', 'Yellow'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<String>(
        onSelected: (String city) {
          setState(() {
            print('Choosen city: $city');
            _choosenCity = city;
          });
        },
        /*child: Text(_choosenCity)*/
        itemBuilder: (BuildContext context) {
          /* return <PopupMenuEntry<String>>[
            PopupMenuItem(child: Text('Ankara'), value: 'Ankara',
            ),
            PopupMenuItem(child: Text('Bursa'), value: 'Bursa',
            ),
            PopupMenuItem(child: Text('Van'), value: 'Van',
            ),
            PopupMenuItem(child: Text('Istanbul'), value: 'Istanbul',
            ),
          ]; */
          return colours
              .map(
                (String colour) => PopupMenuItem(
                  child: Text(colour),
                  value: colour,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
