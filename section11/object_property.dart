import 'dart:math';

class RandomTextProducer {
  String? produceValue() {
    if (Random().nextBool()) {
      return 'String state';
    } else {
      return null;
    }
  }
}

void main(List<String> args) {
  final producer = RandomTextProducer();
  String? result = producer.produceValue();

  if (result == null) {
    print('Null value');
  } else {
    print(result);
  }
}
