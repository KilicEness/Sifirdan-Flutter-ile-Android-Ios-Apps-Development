void main(List<String> args) {
  Function function1 = (int a, int b) {
    int sum = a + b;
  };

  function1(5, 8);

  String name = 'enes';

  var f2 = (int s) => s * 2;

  var f3 = (int s2) {
    return s2 * 2;
  };

  var num = f2(5);
  print(num);
  print(f3(6));
}
