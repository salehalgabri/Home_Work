import 'dart:io';
/**
 * Q8. Digits Operations - Ask the user for a number (e.g., 528). - Print the sum of its digits and also
print the largest digit.
 */

void main() {
    

  stdout.write("Enter a Number: ");
  String? temp = stdin.readLineSync();

  if(temp == null || temp.isEmpty ){
    print("She didn't enter anything");
    return;
  }

  List<int> digits = temp.split('')
      .where((char) => int.tryParse(char) != null) 
      .map((char) => int.parse(char))
      .toList();

  digits.sort();

  int sum = digits.reduce((value, element) => value + element);

  print('Sum of digits: $sum');
  print('Largest digit: ${digits.last}');




}