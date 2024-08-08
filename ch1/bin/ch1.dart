import 'dart:io';

class BankAccount {
  double balance = 0;
  double deposit(double amount) {
    balance += amount;
    return balance;
  }

  double withdraw(double amount) {
    balance += amount;
    return balance;
  }
}

void main(List<String> args) {
  int input = int.parse(stdin.readLineSync()!);
  try {
    if (input < 0) {
      throw Exception('invalid input');
    }
    print('Input: $input');
    BankAccount account = BankAccount();
    print('Deposit: ${account.deposit(input.toDouble())}');
    print('Withdraw: ${account.withdraw(input.toDouble())}');
  } catch (e) {
    print('Error: $e');
  }
}
