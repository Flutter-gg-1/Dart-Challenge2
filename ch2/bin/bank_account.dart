/*
Design a Dart program with a BankAccount class that handles transactions. Implement methods to:

Deposit money.
Withdraw money.
Print the current balance.
Include exception handling for invalid operations and user input errors. Implement a function to display a transaction history.


*/

class BankAccount {
  
  int yourMoney = 1000;
  double balance = 0;
  List<double> transactions = [];
  void deposit(double amount) {
    if (amount <= 0) {
    } else {
      balance += amount;
      transactions.add(amount);
    }

  }

  // Withdraw money
  void withdraw(double amount) {
    if (amount <= 0) {
    } else if (amount > balance) {
    } else {
      balance -= amount;
      transactions.add(-amount);
    }
  }

  // Print the current balance.
  void printBalance() {
    print(balance);
  }
}
