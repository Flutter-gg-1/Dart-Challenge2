import 'bank_account.dart';
void main() {
  print('Hello, Dart!');
  BankAccount().deposit(500);
  BankAccount().withdraw(5);
  BankAccount().printBalance();
  print('Transaction History: ${BankAccount().transactions}');
}
