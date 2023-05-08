void main(List<String> args) {
  RectPerimeterCalc();

  int areaResult = RectAreaCalc(10, 5);
  print('area of rectangle = $areaResult');

  int volume = volumeRect(5, 6, 7);
  print('Rectangular prism volume = $volume');

  int adding = addNumbers(72849, 31412);
  print('add optional three numbers result = $adding');

  int substraction = subtNumbers(n1: 15000, n2: 20000);
  print('subtraction optional three numbers result = $substraction');

  int sumEvenNumbersUntilOurNumber = sumEven(10);
  print('sum of even numbers until to number = $sumEvenNumbersUntilOurNumber');

  double areaOfCircle = areaCircle(3);
  print('area of circle = $areaOfCircle');
}

//non parameter
void RectPerimeterCalc() {
  int a = 5, b = 10;
  print('perimeter of rectangle = ${2 * a + 2 * b}');
}

//with parameter
int RectAreaCalc(int a, int b) {
  //print('area of rectangle ${a * b}');
  return a * b;
}

//shortcut fat arrow
int volumeRect(int a, int b, int c) => a * b * c;

//all of them above required but this is optional
int addNumbers(int n1, [int n2 = 0, int n3 = 0]) {
  return n1 + n2 + n3;
}

//optional subtraction function
int subtNumbers({int n1 = 0, int n2 = 0, int n3 = 0}) {
  return n1 - n2 - n3;
}

//Q1: write a function with just one int paremeter. This function returned the sum of even numbers up to itself.
int sumEven(int num) {
  int sum = 0;
  for (int i = 0; i <= num; i++) {
    if (i % 2 == 0) {
      sum = sum + i;
    }
  }
  return sum;
}

//Q2: write a function to calculate circle area
double areaCircle(double r, [double pi = 3.14]) {
  return pi * r * r;
}
