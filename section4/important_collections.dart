void main(List<String> args) {
  var myMap = <String, dynamic>{'age': 23};
  var mySet = <String>{'enes', 'aybuke'};

  var evenNumbers = [0, 2, 4, 6];
  var oddNumbers = [1, 3, 5, 7];

  //spread operator
  var lastList = [...evenNumbers, ...oddNumbers];
  /* lastList.addAll(evenNumbers);
  lastList.addAll(oddNumbers); */

  var map1 = {'name': 'enes'};
  var map2 = {'age': 23};
  var lastMap = {...map1, ...map2};

  print(lastList);
  print(lastMap);
}
