void main(List<String> args) {
  Car honda = Car('Honda', 2020, true);
  /* honda.model = 'Honda';
  honda.year = 2020;
  honda.automatic = true; */
  honda.showInfo();
  honda.calculateAge();

  var bmw = Car('BMW', 2023, true);
  bmw.showInfo();
  bmw.calculateAge();

  Car car = Car.withoutModelMethod(false, 1999);
  car.showInfo();
  car.calculateAge();

  Car mercedes = Car.withoutYearMethod(true, 'Mercedes');
  mercedes.showInfo();
  mercedes.calculateAge();
}

class Car {
  int? year;
  String? model;
  bool? automatic;

  /* Car(String model, int year, bool automatic) {
    print('method triggered');
    this.model = model;
    this.year = year;
    this.automatic = automatic;
  } */

  Car(this.model, this.year, this.automatic) {
    print('method triggered');
  }

  Car.withoutModelMethod(this.automatic, this.year);
  Car.withoutYearMethod(bool automatic, String model) {
    this.automatic = automatic;
    this.model = model;
  }

  void showInfo() {
    print('Cars model: $model, year: $year, automatic: $automatic');
  }

  void calculateAge() {
    if (year == null) {
      print('The car year is not recognized');
    } else {
      print('Cars age: ${2023 - year!}');
    }
  }
}
