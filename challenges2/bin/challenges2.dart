void main(List<String> arguments) {
  BankAccount account = BankAccount(user: "rahaf", amount: 7000);
  account.withdraw();
}

class BankAccount {
  String? user;
  int? amount;
  int? balance = 5000;
  BankAccount({required this.user, required this.amount});
  deposit() {
    int newBalanc = 0;
    newBalanc = (balance! + amount!);
    print("user name: $user");
    print("user balanc: $newBalanc");
  }

  withdraw() {
    int? newBalanc = balance;
    if ((amount!) > balance!) {
      print("there is no money");
    } else {
      newBalanc = (balance! - amount!);
    }
    print("user name: $user");
    print("user balanc: $newBalanc");
  }
}
