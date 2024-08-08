import 'bank_account.dart';
import 'global_variabel.dart';

void main() {
  double x1 = 500;

  double x2 = 200;
  BankAccount().deposite(x1);
  BankAccount().withdraw(x2);
  BankAccount().printBalance();
}
