/**
 * Q1

Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance, and trying to set a negative
balance.

 */

class BankAccount {
  double _balance ;
  BankAccount({required double balance}) : _balance = balance;

  double get balance => _balance;

  set balance(double vlaue){
    if(vlaue <0){
      print('Invalid balance');
    }else {
    _balance+=vlaue;
    }
    }
}

void main() {
  BankAccount saleh=BankAccount(balance: 150);
  saleh.balance=200;
  print(saleh.balance);
  saleh.balance=-50;
  

}