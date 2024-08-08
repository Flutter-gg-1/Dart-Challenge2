import 'bank_account.dart';

void main() {
  double x1 = 500;

  double x2 = 600;
  BankAccount().deposite(x1);
  BankAccount().withdraw(x2);
  BankAccount().printBalance();
}
