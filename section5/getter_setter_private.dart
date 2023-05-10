import 'customer.dart';
import 'database_operations.dart';

void main(List<String> args) {
  Customer c1 = Customer(2334);
  c1.printInfo();
  c1.customerNoAssign = 72147;
  print(c1.customerNoWrite);

  Customer c2 = Customer(299);
  c2.printInfo();

  DatabaseOperations db = DatabaseOperations();
  bool result = db.connect();

  if (result) {
    print('connected');
  } else {
    print('not connect');
  }
}
