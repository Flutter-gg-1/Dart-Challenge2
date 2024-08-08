class BankAccount{
  double money;
  double balance;
  BankAccount(this.money, this.balance);


  deposit(){
    double res = balance + money;
    print(res);
  }

  withhdraw(){
    if(money <= balance ){
    double res = balance - money;
    print(res);
    }else{
    throw FormatException("the limit is greator than balance");
    }
  }

  currentbalance(){
    print("balance $balance");
  }
}