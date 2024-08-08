import 'package:challenge2/challenge2.dart' as challenge2;

void main(List<String> arguments) {
  Account account = Account(50);
  account.getBalance();
  account.deposit(30);
  account.getBalance();
  account.withdraw(30);
  account.getBalance();
}

class Account {
  double balance;

  Account(this.balance);

  deposit(double amount) {
    balance += amount;
  }

  withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
    }
  }

  getBalance() {
    print(balance);
  }
}
