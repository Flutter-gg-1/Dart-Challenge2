import 'global_variabel.dart';

class BankAccount {
  deposite(double x) {
    balance += x;
  }

  withdraw(double x) {
    if (x > balance) {
      print("Please choose less than this number");
    } else {
      balance -= x;
    }
  }

  printBalance() {
    print(balance);
  }
}
