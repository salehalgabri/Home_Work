/**
Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
print the total count of unique words.
*/

import 'dart:io';

void main() {
  print("Enter a sentence: ");
  String sentence = stdin.readLineSync()!.trim();
  List<String> words = sentence.split(" ");
  Map<String, int> wordCount = {};
  for (String word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }
  List<String> uniqueWords = [];
  for (String word in wordCount.keys) {
    if (wordCount[word] == 1) {
      uniqueWords.add(word);
    }
  }
  print("Unique words: $uniqueWords");
  print("Total count of unique words: ${uniqueWords.length}");
}