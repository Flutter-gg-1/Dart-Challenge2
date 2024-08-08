import 'dart:io';

import 'package:ch_2/ch_2.dart' as ch_2;

void main(List<String> arguments) {
  BankAccount fahad = BankAccount();


    try {
      while (true) {
        print("Enter your choice: ");
        print("1. Deposit");
        print("2. Withdraw");
        print("3. Check balance");
        String? input = stdin.readLineSync();
        switch (input) {
          case "1":
            print("Enter amount to deposit: ");
            double amount = double.parse(stdin.readLineSync()!);
            fahad.deposit(amount);
            break;
          case "2":
            print("Enter amount to withdraw: ");
            double amount = double.parse(stdin.readLineSync()!);
            fahad.withdraw(amount);
            break;
          case "3":
            fahad.printBalance();
            break;
          case "4":
            return;
          default:
            print("Invalid input. Please try again.");
        }
    }
    } catch (e) {
      print(e);
    }
}


class BankAccount {
  double balance = 0.0;

  void deposit(double amount) {
    balance += amount;
    print('Balance: ${balance} after deposit');
  }

  void withdraw(double amount) {
    if(amount>balance){
      throw Exception("Insufficient balance");
    }
    balance -= amount;
    print('Balance: ${balance} after withdraw');
  }

  void printBalance() {
    print('Current balance: ${balance}');
  }
}