void main(List<String> args) {
  int age = 23;
  String name = 'Enes';
  num height = 192.1;

  print(name);
  print(age);
  print(height);
  print(name +
      ' is ' +
      age.toString() +
      ' years old and his height ' +
      height.toString());

  bool isMale = true;
  bool unEmployeed = false;

  print(isMale);
  print(unEmployeed);

  // if we use var data type the system has auto assign
  var university = 'Beykent';
  var universityNumber = 454;
  var course = 'usage of Dart\'s';

  print(name +
      "'s university is " +
      university +
      ' and his number ' +
      universityNumber.toString());
  print(course);
}
