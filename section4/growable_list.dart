void main(List<String> args) {
  List<int?> numbers = [];
  numbers.add(1);
  numbers.add(3);
  numbers.add(2);
  numbers.add(7);

  print(numbers);
  print(numbers.length);
  numbers.length = 100;

  List<int> numbers2 = [1, 2, 3];
  numbers2.add(216);
  print(numbers2);

  List<int> numbers3 = List.filled(10, 10, growable: true);
  numbers3.add(333);

  print(numbers3);
  print(numbers3.length);
}
