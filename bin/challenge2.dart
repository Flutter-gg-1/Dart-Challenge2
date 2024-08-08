void main() {
  BankAccount acc = BankAccount(balance: 15);
  print(acc.getBalance());
  acc.deposit(1000);
  print(acc.getBalance());
  acc.withdraw(15);
  print(acc.getBalance());
}

class BankAccount {
  num balance;

  BankAccount({required this.balance});

  getBalance() {
    return balance;
  }

  deposit(num dep) {
    balance+=dep;
  }

  withdraw(num w) {
    balance-=w;
  }
}