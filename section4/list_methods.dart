void main(List<String> args) {
  List<int> numbers = [10, 5, 3, 7, 9, 4, 4];

  if (numbers.isNotEmpty) {
    print(numbers.first);
    print(numbers.last);
  }

  print('List is empty? : ${numbers.isEmpty.toString()}');
  print('Number of elements: ' + numbers.length.toString());
  print('reverse order ${numbers.reversed}');

  numbers.add(23);
  print(numbers);
  numbers.remove(3);
  numbers.removeAt(1);
  print(numbers);

  //numbers.clear();

  if (numbers.contains(9)) {
    print('the number is exist');
  } else {
    print('the number is not exist');
  }

  print('----------------------------');
  print(numbers.indexOf(4));
  print(numbers.elementAt(2));
  numbers.shuffle();
  print(numbers);
}
