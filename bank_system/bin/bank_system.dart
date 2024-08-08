import 'package:bank_system/bank_system.dart' as bank_system;

import 'account.dart';

void main(List<String> arguments) {
BankAccount account = BankAccount(balance: 1000, ammount: 500);
BankAccount account1 = BankAccount(balance: 100, ammount: 500);
BankAccount account2 = BankAccount(balance: 1000, ammount: 500);


account.deposit();
account.withdraw();
account.deposit();

account.printbalance();
}
