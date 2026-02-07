import 'dart:io';
/**
 * Q7. Sentence Word Counter - Ask the user for a short sentence. - Print how many words it contains
and how many characters (excluding spaces).
 */

void main() {
    
  String sentence;
  
  stdout.write("Enter a short sentence: ");
  String? temp = stdin.readLineSync();

  if(temp == null || temp.isEmpty ){
    print("She didn't enter anything");
    return;
  }

  sentence = temp;

  List<String> words = sentence.split(' ');

  print("Word count: ${words.length}");
  print("Number of letters: ${sentence.replaceAll(' ','').length}");




}