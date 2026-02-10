/**
Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
*/

import 'dart:io';

int sumDigits(int n) {
  int sum = 0;
  while (n > 0) {
    sum += n % 10;
    n ~/= 10;
  }
  return sum;
}

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!.trim());
  while (number >= 10) {
    number = sumDigits(number);
  }
  print("The final single-digit result is: $number");
}
