void main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  map['id'] = 5;
  map['name'] = 'enes';
  map['color'] = 'blue';

  var newMap = Map.from({'value': 'new'});
  var mapFromEntries = Map.fromEntries(map.entries);

  print(mapFromEntries);

  var list = <int>[1, 2, 3, 4, 5];
  var mapFromIterable = Map<String, String>.fromIterable(list,
      key: (element) {
        return '$element';
      },
      value: (element) => '${element * 2}');

  print(mapFromIterable);
}
