void main(List<String> args) {
  /*  var str = "enes";
  str = "kilic";

  final String str2 = "enes";
  str2 = "kilic"; */

  /*const num = 12;
  final num2 = 13;

  final date = DateTime.now();
  const date2 = DateTime.now(); */ //error because const doesnt defined run time functions.

  /* final list = [1, 2, 3];
  final list2 = [1, 2, 3]; */

  const list = [1, 2]; // they are equal cause of const unchangeable things. canonicalized.
  const list2 = [1,2];

  if(list == list2) {
    print("equal");
  } else {
    print("not equal");
  }
}
 //final uses for run time values.
 //const uses for compile time.