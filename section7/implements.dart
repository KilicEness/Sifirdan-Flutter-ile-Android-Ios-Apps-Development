void main(List<String> args) {}

abstract class Animal {
  void nonAbstractMethod() {
    print("describe method");
  }
}

abstract class Flyable {
  void fly();
  void test() {
    print("test");
  }
}

abstract class Runable {
  void run();
}

abstract class Barkable {
  void bark();
}

class Bird extends Animal implements Flyable {
  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void test() {
    // TODO: implement test
  }
}

class Dog extends Animal implements Barkable, Runable {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}
