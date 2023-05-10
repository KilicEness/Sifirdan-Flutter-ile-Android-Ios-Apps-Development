import 'dart:math';

void main(List<String> args) {
  //Q1: a list for 4 city
  List<String> cities = List.filled(4, '');
  cities[0] = 'Ankara';
  cities[1] = 'Istanbul';
  cities[2] = 'Izmir';
  cities[3] = 'Bursa';

  for (String s1 in cities) {
    print(s1);
  }
  print('------------------');

  //Q2:a map has key is a string, values are dynamic
  Map<String, dynamic> info = {};
  info['number of cores'] = 16;
  info['ram'] = 16;
  info['is_ssd'] = true;

  for (var current in info.entries) {
    print(current);
  }

  print('------------------');

//Q3: Create 2 different 5 element list. Elements has 0-50 random value and this elements add a list. Take square of Last list elements to Set and print.

  List<int> list1 = List.filled(5, 0);
  var list2 = List<int>.filled(5, 0);
  List<int> lastList = <int>[];
  var lastSet = <int>{};

  for (int i = 0; i < 5; i++) {
    list1[i] = Random().nextInt(50);
    list2[i] = Random().nextInt(50);
  }

  lastList = [...list1, ...list2];

  for (int temp in lastList) {
    lastSet.add(temp * temp);
  }

  print(lastList);
  print(lastSet);
}
