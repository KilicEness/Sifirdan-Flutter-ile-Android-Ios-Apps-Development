void main(List<String> args) {
  Mathematic m1 = Mathematic(78, 56);
  m1.sum();
  m1.subtraction();

  Mathematic m2 = Mathematic(13, 34);
  m2.subtraction();
  m2.sum();
  m2.sum();

  print(Mathematic.PI);
  print(Mathematic.sumOfAllTransact);
  Mathematic.sayClassName();
}

class Mathematic {
  int firstNum;
  int secondNum;
  static int sumOfAllTransact = 0;

  Mathematic(this.firstNum, this.secondNum);

  static double PI = 3.14;

  static void sayClassName() {
    print("I am Mathematic class");
  }

  void sum() {
    sumOfAllTransact++;
    print(firstNum + secondNum);
  }

  void subtraction() {
    sumOfAllTransact++;
    print(firstNum - secondNum);
  }
}
