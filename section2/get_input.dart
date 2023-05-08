import 'dart:io';

void main(List<String> args) {
  print('enter you name');
  String? name = stdin.readLineSync();
  print('the name is $name');

  print('enter your age');
  int? age = int.parse(stdin.readLineSync()!);
  print('your age is after 5 years ${age + 5}');
}
