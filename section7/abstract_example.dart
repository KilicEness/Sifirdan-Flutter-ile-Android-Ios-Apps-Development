void main(List<String> args) {
  DataBase db = FireBaseDB();
  db.userSave();
  db.userUpdate();
  db.userDelete();

  var db2 = OracleDB();
  db2.userSave();
  db2.userUpdate();

  userUpdate(db);
  userUpdate(db2);
}

void userUpdate(DataBase dataBase) {
  dataBase.userUpdate();
}

abstract class DataBase {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends DataBase {
  @override
  void userDelete() {
    print("OracleDB user deleted");
  }

  @override
  void userSave() {
    print("OracleDB user saved");
  }

  @override
  void userUpdate() {
    print("OracleDB user updated");
  }
}

class FireBaseDB extends DataBase {
  @override
  void userDelete() {
    print("FireBaseDB user deleted");
  }

  @override
  void userSave() {
    print("FireBaseDB user saved");
  }

  @override
  void userUpdate() {
    print("FireBaseDB user updated");
  }
}
