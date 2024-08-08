import 'transcription.dart';
void main(List<String> arguments) {
  BankAccount bank =BankAccount(500, 1000);
  print("deposite");
  bank.deposit();
  print("withdraw");
  bank.withhdraw();
  bank.currentbalance();

}
 

