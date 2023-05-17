void main(List<String> args) {
  const Student enes = Student("enes", 5);
  final Student enes2 = const Student("enes", 5);
  var enes3 = const Student("enes", 5);

  if(enes == enes3) {
    print("equal");
  } else {
    print("not equal");
  }
}

class Student {
  final String name ;
  final int id;

  const Student(this.name, this.id);
}