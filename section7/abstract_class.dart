void main(List<String> args) {
  Shape square1 = Square(4);
  square1.salute();
  print(square1.calculateArea());
  print(square1.calculateEnvironment());

  Shape rectangle1 = Rectangle(6, 13);
  rectangle1.salute();
  print(rectangle1.calculateArea());
  print(rectangle1.calculateEnvironment());

  List<Square> allOfSquares = [];
  List<Rectangle> allOfRectangles = [];
  List<Shape> allOfShapes = [];

  allOfShapes.add(square1);
  allOfShapes.add(rectangle1);

  test(square1);
  test(rectangle1);
}

void test(Shape shape) {
  shape.salute();
}

abstract class Shape {
  double calculateArea();
  double calculateEnvironment();

  void salute() {
    print("hello I am a shape");
  }
}

class Square extends Shape {
  int edge;

  Square(this.edge);

  @override
  double calculateArea() {
    return edge * edge.toDouble();
  }

  @override
  double calculateEnvironment() {
    return edge * 4.toDouble();
  }

  @override
  void salute() {
    print("hello Im square");
  }
}

class Rectangle extends Shape {
  int wide, length;

  Rectangle(this.wide, this.length);

  @override
  double calculateArea() {
    return wide * length.toDouble();
  }

  @override
  double calculateEnvironment() {
    return 2 * (wide + length).toDouble();
  }

  @override
  void salute() {
    print("hello Im a rectangle");
  }
}
