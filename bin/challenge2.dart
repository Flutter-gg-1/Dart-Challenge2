void main() {
  BankAccount acc = BankAccount(balance: 15);
  print(acc.getBalance());
  acc.deposit(10);
  print(acc.getBalance());
  acc.withdraw(2000);
  print(acc.getBalance());
  acc.withdraw(20);
  print(acc.getBalance());
}

class BankAccount {
  num balance;

  BankAccount({required this.balance});

  getBalance() {
    return balance;
  }

  deposit(num dep) {
    if(dep < 0) {
      print("NOT ALLOWED");
      return;
    }
    balance+=dep;
  }

  withdraw(num w) {
    if(w > balance || w < 0) {
      print("NOT ENOUGH MONEY");
      return;
    }
    balance-=w;
  }
}