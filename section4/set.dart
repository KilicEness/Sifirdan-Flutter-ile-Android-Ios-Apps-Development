void main(List<String> args) {
  Set<String> names = Set();

  names.add('enes');
  names.add('enes');
  names.add('aybuke');
  names.add('aybuke');
  names.add('kilic');
  names.add('ayşe');
  names.add('lina');

  bool result = names.remove('enes23');
  print('result: ' + result.toString());

  for (String s1 in names) {
    print('name: $s1');
  }

  Set<int> numbers = Set.from([123, 24, 315, 23, 412, 321]);
  List<int> evenNumbers = [0, 2, 4, 6, 8, 0, 8, 6, 4, 2];

  for (int s1 in numbers) {
    print('no: $s1');
  }

  numbers.clear();
  numbers.addAll(evenNumbers);

  for (int s1 in numbers) {
    print('no: $s1');
  }
}
