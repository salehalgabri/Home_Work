import 'dart:io';

/**
 * Q2. Odd Numbers in a Range - Ask the user to input a number n. - Print all odd numbers between 1
and n, and also print how many odd numbers were found.
 */

void main() {

  int countOfOddNumbers=0;

  stdout.write("Enter The Number:");
  int n = int.parse(stdin.readLineSync()!);

  for (int i=1;i<n;i++){
    if(i%2 !=0){
      print("Odd Number: $i");
      countOfOddNumbers++;
    }
  }
  print("Number Of Odd Numbers: $countOfOddNumbers");
}