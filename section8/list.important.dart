void main(List<String> args) {
  Person emre = Person(3, "emre");
  Student hasan = Student(1, "hasan", 10);
  Person ayse = Person(6, "ayse");
  var yunus = Person(5, "yunus");
  var ali = Student(9, "ali", "6");

  List<Person> allStudents = [emre, hasan, ayse, yunus, ali];

  var iterable = allStudents.map((Person e) => "Map ${e.name}");
  print(iterable);

  var list1 = List<Student>.filled(5, Student(0, "", 0));
  var listFrom = List<Student>.from(allStudents.whereType<Student>());
  var ListOf = List<Student>.of(allStudents.whereType<Student>());

  var listGenerate =
      List<Student>.generate(5, (index) => Student(index, "$index", index * 2));

  print(listGenerate);
  print(ListOf);

  var unchangeableList = List.unmodifiable([0, 1, 2]);
  //unchangeableList.add(5);
  print(unchangeableList.reversed);
}

class Person {
  int id = 0;
  String name = "";

  Person(this.id, this.name);
  @override
  String toString() {
    return "id: $id and name: $name\n";
  }
}

class Student extends Person {
  int numberOfClass = 0;
  Student(id, name, numberOfClass) : super(id, name);
  @override
  String toString() {
    return "id: $id and name: $name and number of taken class: $numberOfClass\n";
  }
}
