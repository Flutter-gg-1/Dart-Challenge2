
void main(List<String> arguments) {
 Bank bank = Bank(mony: 50, balance: 500);
 bank.printB();
  bank.deposit();
  bank.printB();
  bank.withdraw();

  bank.printB();


}

class Bank {
  int mony;
  int balance =500 ;
  Bank({required this.mony, required this.balance});
  deposit() {
    balance = balance+ mony; 
  }

  withdraw() {
    balance = balance+ mony; 
  }

  printB() {
    print("balnce $balance ");
  }
}
