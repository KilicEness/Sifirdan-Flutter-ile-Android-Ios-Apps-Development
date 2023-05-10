import 'dart:math';

class DatabaseOperations {
  String _userName = 'enes';
  String _password = "123456";

  bool connect() {
    if (_isInternet()) {
      if (_userName == 'enes' && _password == 123456) {
        return true;
      } else {
        return false;
      }
    } else
      return false;
  }

  DatabaseOperations() {}

  DatabaseOperations.loginWithNameandPassword(
      String userName, String password) {}

  bool _isInternet() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
