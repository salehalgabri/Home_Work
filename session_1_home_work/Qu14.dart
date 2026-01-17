/**
Question 14
Write a Dart program that declares a String variable named greeting with an initial
value of "Hello". Then, update greeting to "Hello, Dart!" and print it.
 */

void main (){
  String greeting = "Hello";

  greeting = greeting.replaceRange(5, null, ", Dart!");
  print(greeting);
}