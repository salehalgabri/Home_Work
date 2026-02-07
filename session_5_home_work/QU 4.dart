import 'dart:io';

/**
 * Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
numbers, and then calculate the difference between them.
 */

void main() {
    List<int> numbers=[];
  do {
    stdout.write("Enter number:");
    String? input = stdin.readLineSync();

    if (input != null ){
      numbers.add(int.parse(input));
    }
  } while (numbers.length <5);

  numbers.sort();

  print('Smallest Number: ${numbers.first}');
  print('Largest Number: ${numbers.last}');
  print('The difference (Max - Min) is: ${numbers.last - numbers.first}');

}