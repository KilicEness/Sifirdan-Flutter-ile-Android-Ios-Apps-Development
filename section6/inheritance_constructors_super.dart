void main(List<String> args) {
  Soldier soldier = Soldier("enner", "valencia", "ecuador");
  soldier.salute();
  Captain enes = Captain("enes", "kilic", "ankara");
  enes.salute();
}

class Soldier {
  String name = "default";
  String surName = "default";
  String birthPlace = "default";
  int age = 0;

  Soldier(this.name, this.surName, this.birthPlace) {
    print("Soldier constructor has been running");
  }

  void salute() {
    print("$name $surName $birthPlace commander!");
  }
}

class Captain extends Soldier {
  Captain(String name, String surName, String birthPlace)
      : super(name, surName, birthPlace) {
    print("Captain constructor has been running");
  }
  String mission = "pilot";

  void changeAge(int newAge) {
    super.age = newAge;
  }

  @override
  void salute() {
    print("$mission $name $surName $birthPlace commander!");
  }
}
