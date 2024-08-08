void main(List<String> arguments) {
  var mgr = BankMgr();

  mgr.addMoney(amount: 100);
  mgr.addMoney(amount: 400);
  mgr.withdrawMoney(amount: 55);

  mgr.showCurrentBalance();

  mgr.showHistory();
}

class BankMgr {
  double balance = 0;
  List<Map<String, double>> history = [];

  void addMoney({required double amount}) {
    balance += amount;
    history.add({'Deposit': amount});
  }

  void withdrawMoney({required double amount}) {
    if (balance - amount >= 0) {
      balance -= amount;
      history.add({'Withdraw': amount});
    } else {
      print('Insufficient Funds!');
    }
  }

  void showCurrentBalance() => print(balance);

  void showHistory() => print(history);
}
