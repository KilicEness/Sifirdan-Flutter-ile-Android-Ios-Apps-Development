void main(List<String> args) {
  User user = User();
  user.login();

  NormalUser normal = NormalUser();
  normal.login();
  normal.invite();

  AdminUser admin = AdminUser();
  admin.login();
  admin.showUserCount();

  User admin2 = AdminUser(); //upcasting

  List<User> allUsers = [];
  allUsers.add(user);
  allUsers.add(normal);
  allUsers.add(admin);

  test(user);
  test(normal);
  test(admin);
  test(admin2);
}

void test(User users) {
  users.login(); // polimorphism
}

class User {
  String mail = "";
  String password = "";

  void login() {
    print("user is login");
  }
}

class NormalUser extends User {
  void invite() {
    print("Normal user is invites");
  }

  @override
  void login() {
    print("Normal user is login");
  }
}

class AdminUser extends User {
  void showUserCount() {
    print("its shows sum of users");
  }

  @override
  void login() {
    print("Admin user is login");
  }
}
