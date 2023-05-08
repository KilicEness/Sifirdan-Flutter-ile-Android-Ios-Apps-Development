void main(List<String> args) {
  //integer list
  List<int> numbers = List.filled(5, 2, growable: false);
  numbers[0] = 1;
  numbers[1] = 3;
  numbers[2] = 2;
  numbers[3] = 7;
  numbers[4] = 1;

  print(numbers);
  print(numbers.length);
  print(numbers[3]);

  //String list
  List<String> names = List.filled(3, "");
  names[0] = 'enes';
  names[1] = 'moon women';
  names[2] = 5.toString();

  print(names);

  //mixed list
  List<dynamic> mix = List.filled(5, 0);
  mix[0] = 'enes';
  mix[1] = 23;

  print(mix);

  //surfing with list element
  for (int i = 0; i < numbers.length; i++) {
    numbers[i] += 5;
    print(numbers[i]);
  }

  print('----------------------------------------------');

  for (int currentElement in numbers) {
    print(currentElement);
  }
}
