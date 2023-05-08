void main(List<String> args) {
  Map<String, int> areaCodes = {'Ankara': 312, 'Bursa': 224, 'Istanbul': 212};
  print(areaCodes);
  print(areaCodes['Bursa']);

  Map<String, dynamic> enes = {'surname': 'kilic', 'age': 23, 'isSingle': true};
  print('Enes\'s age ' + enes['age'].toString());

  print('-----------------------------------------');

  for (String currentKey in enes.keys) {
    print(currentKey);
    //print(enes[currentKey]);
  }

  print('-----------------------------------------');

  for (var element in enes.entries) {
    print(element.key.toString() + ':' + element.value.toString());
  }

  print('-----------------------------------------');

  if (enes.containsKey('age')) {
    print('Finding age is : ${enes['age']}');
  }
}
