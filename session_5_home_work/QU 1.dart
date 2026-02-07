import 'dart:io';

/**
 * Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
Then, check if the average is greater than 50 or not
 */

void main() {

  List<int> numbers=[];

  do {
    stdout.write("Enter number:");
    String? input = stdin.readLineSync();

    if (input != null  ){
      numbers.add(int.parse(input));
    }
  } while (numbers.length <3);
  
  int sum = numbers.reduce((v,e) => v+e);
  
  double avg = sum / numbers.length;

  print("Sum:$sum");
  print("average:$avg");
  print("Is the average greater than 50? ${avg >50 ? "Yes" : "No"} ");



}