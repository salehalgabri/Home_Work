/**
Exercise 10:

Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing
after each.

b) Create var greeting = 'Hi'; change it to another String and print.

c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3).
 */

void main () {
  dynamic temp1 = 15;
  print(temp1);
  temp1 = "Saleh";
  print(temp1);

  var greeting = 'Hi';
  print(greeting);
  greeting = "Hello";
  print(greeting);

  num pi = 3.14159;

  print(pi.toInt());

  print(pi.toStringAsFixed(3));


}