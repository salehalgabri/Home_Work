import 'dart:io';

/**
 * Q3. Word Reversal & Vowel Count - Take a word from the user. - Print the word reversed, and also
count how many vowels it has.
 */

void main() {

  stdout.write("Enter Word:");
  String word = stdin.readLineSync()!;
  int numberOfVowels = 0;
  for (int i = word.length; i > 0; i--){
    stdout.write(word[i-1]);
    if(['a','e','i','o','u'].contains(word[i-1].toLowerCase()) ) {
      numberOfVowels++;
    }
  }
  print("\nNumber Of Vowels:$numberOfVowels");

}