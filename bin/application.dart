import 'dart:io';
import 'package:application/bank.dart';

void main(List<String> arguments) {
  Bank bank = Bank(balance: 0, deposti: [], widthdraw: []);
  late String userInput;
  do {
    print("1- deposit -2 withdraw 3- history");
    userInput = stdin.readLineSync()!;
    switch (userInput) {
      case == "1":
        print("1- ammount");
        try {
          int depoditAmmount = int.parse(stdin.readLineSync()!);
          bank.deposit(depoditAmmount);
        } catch (e) {
          print(e);
        }
        break;

      case == "2":
        print("1- withdraw");
        try {
          int withdrawAmmount = int.parse(stdin.readLineSync()!);
          bank.withdraw(withdrawAmmount);
        } catch (e) {
          print(e);
        }
        break;
      case "3":
        bank.deposti.forEach(print);
        bank.widthdraw.forEach(print);
    }
  } while (userInput != "0");
}
