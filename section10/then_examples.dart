void main(List<String> args) {
  fetchUsertoId(5).then((value) {
    fetchCoursetoUsername(value['username']).then((List courseList) {
      String firstCourse = courseList[0];

      fetchFirstCommentOfCourse(firstCourse).then((String comment) {
        print(comment);
      });
    });
  });
}

Future<String> fetchFirstCommentOfCourse(String courseName) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return 'course is perfect';
  });
}

Future<List<String>> fetchCoursetoUsername(String username) {
  print('$username courses is fetching');
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'javascript', 'nodejs', 'hyperledger fabric'];
  });
}

Future<Map<String, dynamic>> fetchUsertoId(int id) {
  print('id: $id,  user is fetching');
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'eneskilic', 'id': id};
  });
}
