void main(List<String> args) {
  List nameList = ['enes', 'breeze', 'moon', 'white'];

  for (String temp in nameList) {
    print(temp);
  }

  for (int i = 0; i < nameList.length; i++) {
    print('the person is ${nameList[i]}');
  }

  int count = 0;
  while (count < 3) {
    print('count is ${count} times');
    count++;
  }

  int count2 = 0;
  do {
    print('count2 is ${count2}');
    count2++;
  } while (count2 <= 5);

  for (int i=1; i <= 10; i++) {
    for(int j=1; j <= 10; j++){
      print('$i * $j = ${i * j}');
    }
  }
}
