
void main() {
  
  

BankAccount account = BankAccount(1);
account.deposit({"amount" : 101, "trans": "deposit", "Date": "1-2-2024"});
account.withdraw({"amount" :5, "trans": "withdraw", "Date": "1-3-2024"});
account.printCurrenBalance();
print("\n\n\n");
account.transactionHistory();
}

class BankAccount{

  int id;
  List<Map> transaction =[];
  int balance =0;
  int limit = 100;
  BankAccount(this.id){}

  void deposit(Map trans){
    int amount = trans["amount"];
    if(amount<limit){
    transaction.add(trans);
    balance=balance+amount;}
    else{
      print("Exeeding limit of $limit");
    }
  }
  void withdraw(Map trans){
    int amount = trans["amount"];
    if(amount<limit){
    transaction.add(trans);
    balance=balance-amount;}
    else{
      print("Exeeding limit of $limit");
    }

  }
  void printCurrenBalance(){
    print("Current balance is: $balance" );
  }

  void transactionHistory(){
    print("----Transaction History----");
    print(transaction);

  }
}