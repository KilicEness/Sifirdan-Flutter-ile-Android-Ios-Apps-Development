import 'dart:math';

void main(List<String> args) {
  try {
    double val = takeSquare(-20);
    print("Value: ${val.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double takeSquare(int i) {
  try {
    if (i < 0) {
      throw FormatException("Number cant be negative");
    } else
      return sqrt(i);
  } on FormatException catch (e) {
    print(e.message + " inside of method");
  } finally {
    return 0;
  }
}
