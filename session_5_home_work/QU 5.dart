import 'dart:io';

/**
 * Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
10, then calculate the sum of all results.
 */

void main() {
    
    int number ;
    stdout.write('Enter The Number:');
    number =int.parse( stdin.readLineSync()!);
  int sum=0;
  for (int i=1;i<=10;i++){
    print("$number * $i = ${i*number}");
    sum+=(i*number);
  }

  print('Sum: $sum');

}