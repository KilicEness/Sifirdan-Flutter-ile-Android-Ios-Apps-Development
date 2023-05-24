void main(List<String> args) async {
  print('Fetching on the net some guys data');

  operationsWithGuys();
  print('Some other staff');

  print('operations ended');
}

void operationsWithGuys () async{
  String guy = await fetchData();
  print(guy.length);
}

Future<String> fetchData() {
  return Future<String>.delayed(Duration(seconds:5), () {
    return "Guy name: Enes and id: 1";
  });
} 