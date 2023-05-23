void main(List<String> args) {
  var returningFunc = mult(3);
  var result = returningFunc(4);
  print(result);
}

Function mult(int element) {
  return (int value) => element * value;
}
