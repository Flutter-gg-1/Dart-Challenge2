class BankAccount {
  double balance = 0;
  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    balance -= amount;
  }
}

void main(List<String> args) {
  var account = BankAccount();
  account.deposit(100);
  print(account.balance);
  account.withdraw(50);
  print(account.balance);
  print(account.balance);
}
