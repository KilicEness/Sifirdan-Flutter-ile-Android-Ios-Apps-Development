void main(List<String> args) {
  print('Enes give an order');
  print('Waiter takes order');
  Future<String> result = longProcess();

  result.then((String value) => print(value)).catchError((error) {
    print(error);
  }).whenComplete(() => print('order has finished'));
  print('Order is preparing');
  print('Order is ready!');
}

Future<String> longProcess() {
  Future<String> result = Future.delayed(Duration(seconds: 2), () {
    return 'Waiter brings order';
    //throw Exception('False order');
  });
  return result;
}
