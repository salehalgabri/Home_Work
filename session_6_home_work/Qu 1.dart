/**
Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2. - Add a
method addNumbers() that prints the sum of the two numbers. - Create an object in main() and call
the method
*/

class Calculator {
  int num1;
  int num2;

  Calculator({required this.num1, required this.num2});

  void addNumbers() {
    print(num1 + num2);
  }
}

void main() {
  Calculator calc = Calculator(num1: 10,num2: 20);
  calc.addNumbers();
}
