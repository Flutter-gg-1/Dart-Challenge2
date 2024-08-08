


import 'dart:io';

void main(){

int  op = 1;


BankAccount bankAccount = BankAccount();

whileBreak :
while(true){

  

  try{

    print("0 - deposit ");
  print("1 - withdraw ");
  print("2 - balance ");
  print("3 - exit ");

  op = int.parse(stdin.readLineSync()!);





  switch(op){

    case 0 :
    print("give the money you want to deposit ");
    double money = double.parse(stdin.readLineSync()!);

    bankAccount.deposit(money);

    case 1 :
    double money = double.parse(stdin.readLineSync()!);
    print("give the money you want withdraw ");

    bankAccount.withdraw(money);

    case 2 :

    print("all your balance ");
    

    bankAccount.balance();



    case 3 :

    break whileBreak;
    

    


  }

    


  }catch(err){

    print("give just number int for option and double for money");


  }

}

}



class BankAccount{


  double money = 0;


  // BankAccount(this.money);



  void deposit(double val){

    money += val;

  }


  void withdraw(double val){


    if(money > val){
      money -= val;
    }

    else{
      print("no money");
    }

  }
  


  balance(){

    print("you cuutnrnt money is $money");

  }






}