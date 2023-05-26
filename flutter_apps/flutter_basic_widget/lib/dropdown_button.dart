import 'package:flutter/material.dart';

class DropDownButtonUsage extends StatefulWidget {
  const DropDownButtonUsage({super.key});

  @override
  State<DropDownButtonUsage> createState() => _DropDownButtonUsageState();
}

class _DropDownButtonUsageState extends State<DropDownButtonUsage> {
  String? _choosenCity = null;
  List<String> _cities = ['Ankara', 'Istanbul', 'Izmir', 'Bursa'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('choose city'),
        /* items: [
          DropdownMenuItem(
            child: Text('Ankara city'),
            value: 'Ankara',
          ),
          DropdownMenuItem(
            child: Text('Bursa city'),
            value: 'Bursa',
          ),
          DropdownMenuItem(
            child: Text('Izmir city'),
            value: 'Izmir',
          ),
        ], */
        items: _cities
            .map(
              (String tempCity) => DropdownMenuItem(
                child: Text(tempCity),
                value: tempCity,
              ),
            )
            .toList(),
        value: _choosenCity, 
        onChanged: (String? newCity) {
          setState(() {
            print('it worked $newCity');
            _choosenCity = newCity;
          });
        },
      ),
    );
  }
}
