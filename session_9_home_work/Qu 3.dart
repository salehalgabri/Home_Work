/**
 * 3. Unique Visitor Counter
You are building a mobile app that tracks unique visitors per day.
- Each visitor is identified by an ID (an integer).
- During the day, the app receives many repeated IDs (because the same user may open the app
multiple times).
- You need to count how many unique visitors used the app today.
Write code that, given a list of visitor IDs, returns the number of unique visitors.
 */

import 'dart:io';

int countUniqueVisitors(List<int> visitorIds) {
  return visitorIds.toSet().length;
}

void main() {
  print('Welcome to the Unique Visitor Counter!');
  print('Enter visitor IDs separated by spaces (e.g., 1 2 3 2 1 4):');
  
  String? input = stdin.readLineSync();
  
  if (input != null && input.isNotEmpty) {
    List<int> visitorIds = input
        .split(' ')
        .map((e) => int.tryParse(e))
        .where((e) => e != null)
        .map((e) => e!)
        .toList();
    
    int uniqueCount = countUniqueVisitors(visitorIds);
    print('\nTotal visitor IDs entered: ${visitorIds.length}');
    print('Number of unique visitors: $uniqueCount');
  } else {
    print('No input provided.');
  }
}