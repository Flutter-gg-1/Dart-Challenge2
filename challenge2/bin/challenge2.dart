
void main(List<String> arguments) {
  
}

class BankAccount {

  double balance;
  
  BankAccount({
    required this.balance,
  });

deposit(double amount){
balance+=amount;
}
withdraw(double amount){
balance-=amount;
}
getBalance(){
  print(balance);
}
}
