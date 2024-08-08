void main() {
  var a = Bank(name: "muhannad", amount: 1000);
  print(a.amount);
  a.depo(200.0, a.amount);

  a.withdq(200.00, a.amount);
}

class Bank {
  final String name;

  final double amount;
  Bank({required this.name, required this.amount});

  depo(double deppo, double amount) {
    deppo + this.amount;
    print(deppo + this.amount);
  }

  withdq(double wthid, double amount) {
    wthid - this.amount;
    print(wthid - this.amount);
  }
}
