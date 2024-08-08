import 'global_variabel.dart';

class BankAccount {
  deposite(double x) {
    balance += x;
  }

  withdraw(double x) {
    balance -= x;
  }

  printBalance() {
    print(balance);
  }
}
