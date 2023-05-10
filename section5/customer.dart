class Customer {
  int? _customerNo;

  /* Customer(int _customerNo) {
    this.no = no;
  } */

  //Customer(this._customerNo);

  Customer(int customerNo) {
    _customerControl(customerNo);
  }

  String get customerNoWrite {
    return "Customer no: $_customerNo";
  }

  void set customerNoAssign(int no) {
    if (no > 300) {
      _customerNo = no;
    } else
      return;
  }

  void _customerControl(int no) {
    if (no > 300) {
      _customerNo = no;
    } else
      return;
  }

  void printInfo() {
    print('Customer has been created, customer no: $_customerNo');
  }
}
