/**
Exercise 3:

a) Create String phrase = 'Learning Dart'.

b) Print phrase.length, phrase.toLowerCase(), and phrase.contains('Dart').

c) Trim spaces from String test = ' Dart ' and print the result.
 */

void main () {
  String phrase = 'Learning Dart';
  print(phrase.length);
  print(phrase.toLowerCase());
  print(phrase.contains('Dart'));

  String test = ' Dart ';
  print(test);
  print(test.length);
  print(test.trim());
  print(test.trim().length);

}