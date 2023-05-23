void main(List<String> args) {
  print("program is running");

  try {
    int num = 100 ~/ int.parse('enes');
    print(num);
  } on IntegerDivisionByZeroException {
    print('division cant be zero');
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print('Error ${e}');
  } finally {
    print('operation ended');
  }

  print('program ended.');
}
