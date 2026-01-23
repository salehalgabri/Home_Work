/**
 * Question 19

Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once.
 */


void main(){
  
  List<String> names = [
    'Ali',
    'Sara',
    'Ali',
    'Mona',
    'Sara',
    'Omar',
    'Ali',
  ];

  Set<String> uniqueNames = names.toSet();

  Map<String, int> counts = {};
  for (dynamic name in names) {
    counts[name] = (counts[name] ?? 0) + 1;
  }

  print('Original length: ${names.length}');
  print('Unique length: ${uniqueNames.length}');
  print('Unique names: $uniqueNames');
  print('Counts: $counts');

  if (uniqueNames.length < names.length) {
    print('Duplicates exist in the list.');
  } else {
    print('No duplicates found.');
  }

  

  MapEntry<String, int>? mostRepeated;

  for (dynamic entry in counts.entries) {
    if (mostRepeated == null || entry.value > mostRepeated!.value) {
      mostRepeated = entry;
    }
  }

  if (mostRepeated != null) {
    print('Most frequently used name: ${mostRepeated!.key} (${mostRepeated!.value})');
  }
  
}