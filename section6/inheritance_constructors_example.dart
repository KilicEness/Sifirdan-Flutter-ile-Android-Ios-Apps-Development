void main(List<String> args) {
  Person person = Person("breeze", 25);
  person.introduceYourself();

  Personel personel = Personel("enes", 23, 120);
  personel.introduceYourself();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduceYourself() {
    print("my name is $name and Im $age");
  }
}

class Personel extends Person {
  int salary;

  Personel(String name, int age, this.salary) : super(name, age);

  @override
  void introduceYourself() {
    // TODO: implement introduceYourself
    super.introduceYourself();
    print("salary is $salary k pound");
  }
}
