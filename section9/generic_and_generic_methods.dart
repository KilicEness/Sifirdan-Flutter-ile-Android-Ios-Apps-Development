void main(List<String> args) {
  double doubleAverage = findAverage<double>(8.9, 73576.324);
  double intAverage = findAverage<int>(64, 57);

  print('Average $doubleAverage');
  print('Average $intAverage');
}

double findAverage<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
