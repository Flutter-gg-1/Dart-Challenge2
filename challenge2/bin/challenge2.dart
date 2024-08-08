void main(List<String> arguments) {
//test

}

class BankAccount {
  double balance;
  static List? transaction;

  BankAccount({
    required this.balance,
  });

  deposit(double amount) {
    balance += amount;

  }

  withdraw(double amount) {
    balance -= amount;
  }

  getBalance() {
    print(balance);
  }

  storeTransaction(){

  }
}
