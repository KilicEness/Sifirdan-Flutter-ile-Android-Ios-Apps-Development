void main(List<String> args) {
  List<int> list = [1, 3, 5];
  /* list.forEach((element) {
    print("Element $element");
  }); */

  list.forEach(callback);

  selfForEach(list, (int value, int index) {
    print("Value: $value and index: $index");
  });
}

void callback(int element) {
  print("Element $element");
}

void selfForEach(List<int> list, Function callback) {
  for (int i = 0; i < list.length; i++) {
    callback(list[i], i);
  }
}
