class BankAccount{

double balance;

double ammount;

BankAccount({
  required this.balance,
  required this.ammount
});

 deposit(){
  balance +=ammount;
  print('new balance : $balance');
 } 

 withdraw(){
  if (ammount<=balance) {
    balance -=ammount;
    print('new balance : $balance');
  } else {
    print('balance less than the $ammount');
  }
 }

 printbalance(){
  print(balance);
 }
}