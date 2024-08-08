import 'package:ch_2/ch_2.dart' as ch_2;

void main(List<String> arguments) {
  BankAccount fahad = BankAccount();

  fahad.balance = 1200;
  fahad.printBalance();

  fahad.deposit(120);
  fahad.withdraw(15888);
}



class BankAccount {
  double balance = 0.0;

  void deposit(double amount) {

    balance += amount;
    print('Balance: ${balance} after deposit');
  }

  void withdraw(double amount) {
    balance -= amount;
    print('Balance: ${balance} after withdraw');
  }

  void printBalance() {
    print('Current balance: ${balance}');
  }
}