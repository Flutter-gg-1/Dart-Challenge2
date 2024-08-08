// Challenge 2: Bank Transaction System 🏦
// Design a Dart program with a BankAccount class that handles transactions. Implement methods to:

// Deposit money.
// Withdraw money.
// Print the current balance.
// Include exception handling for invalid operations and user input errors. Implement a function to display a transaction history.


import 'dart:io';

class BankAccount {
  double balance = 0.0;
  List<String> history= [];

  void deposit(double amount) {
    if (amount <= 0) {
     print('Deposit amount must be greater than zero.');
    }
    balance += amount;
    history.add('Deposited \$${amount}');
    print('Deposited \$${amount}');
  }

  void withdraw(double amount) {
    if (amount <= 0) {
     print('Withdrawal amount must be greater than zero.');
    }
    if (amount > balance) {
      print('Insufficient funds.');
    }
    balance -= amount;
    history.add('Withdrew \$${amount}');
    print('Withdrew \$${amount}');
  }

  void printbalance() {
    print('Current balance: \$${balance}');
  }

  void display() {
    if (history.isEmpty) {
      print('No transactions yet.');
    } else {
      print('Transaction History:');
      for (var transaction in history) {
        print(transaction);
      }
    }
  }
}

void main() {
  final account = BankAccount();

  while (true) {
    print('\nBank Account System');
    print('1. Deposit ');
    print('2. Withdraw ');
    print('3. Print ');
    print('4. Exit');
    stdout.write('Choose an option: ');

    final choice = stdin.readLineSync();
    if (choice == null) {
      print('Invalid input.');
      
    }

    switch (choice) {
      case '1':
       
          stdout.write('Enter deposit amount: \$');
        final amount = double.tryParse(stdin.readLineSync() ?? '');
        if (amount == null) {
          print('Please enter a valid amount.');
        } else {
          account.deposit(amount);
        }
        break;

      case '2':
        
         stdout.write('Enter withdrawal amount: \$');
       var amount = double.tryParse(stdin.readLineSync() ?? '');
        if (amount == null) {
          print('Please enter a valid amount.');
        } else {
          account.withdraw(amount);
        }
        break;

      case '3':
        account.printbalance();
        break;

      case '4':
        print('Exiting...');
        return;

      default:
        print('Invalid choice. ');
    }
  }
}
