void main(List<String> args) {
  int num1 = 6;
  num num2 = 9;
  var leastNum;

  /* if (num1 < num2) {
    leastNum = num1;
  } else {
    leastNum = num2;
  } */

  num1 < num2 ? leastNum = num1 : leastNum = num2 ;


  print('least num is $leastNum');
}