void main(List<String> args) {
  Student ayse = Student('ayse', 3, -5);
  print(ayse.id);

  Student enes = Student.factoryConstructor("enes", 23, -243);
  print(enes.id);
}

class Student {
  String name = "";
  int age = 0;
  int id = 0;

  Student(this.name, this.age, this.id) {
    print('default constructor run');
  }

  factory Student.factoryConstructor(String name, int age, int id) {
    if (id < 0) {
      return Student(name, age, 1);
    } else
      return Student(name, age, id);
  }
}
