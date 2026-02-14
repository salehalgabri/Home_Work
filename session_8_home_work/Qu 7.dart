/**
 * Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.
 */

import 'dart:io';

void main() {
  List<int> numbers = [];
  print("Enter 5 Numbers:");
  for (int i = 0; i < 5; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int largest = numbers[0];
  int smallest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
    if (numbers[i] < smallest) {
      smallest = numbers[i];
    }
  }
  print("Largest Number: $largest");
  print("Smallest Number: $smallest");
  print("Difference: ${largest - smallest}");
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  print("Average: ${sum / numbers.length}");
  print("Numbers above average:");
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > (sum / numbers.length)) {
      print(numbers[i]);
    }
  }
  int even = 0;
  int odd = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      even++;
    } else {
      odd++;
    }
  }
  print("Even numbers: $even");
  print("Odd numbers: $odd");
}
