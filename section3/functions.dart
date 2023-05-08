void main(List<String> args) {
  RectPerimeterCalc();
  int areaResult = RectAreaCalc(10, 5);
  print('area of rectangle = $areaResult');
  int volume = volumeRect(5, 6, 7);
  print('Rectangular prism volume = $volume');
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

int volumeRect(int a, int b, int c) {
  return a * b * c;
}
