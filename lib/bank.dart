class Bank {
  late int balance;
  late List<int> deposti;
  late List<int> widthdraw;

  Bank({required this.balance, required this.deposti, required this.widthdraw});

  void currentBalance() {
    print(balance);
  }

  void withdraw(int money) {
    if (money > balance) {
      balance -= money;
      widthdraw.add(money);
    }
  }

  void deposit(int money) {
    balance += money;
    deposti.add(money);
  }
}
