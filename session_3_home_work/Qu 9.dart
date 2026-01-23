/**
 * Question 9

Write a Dart program that removes duplicate items from a list using a Set.
Compare the unique
count with the original list length and print a message if duplicates were removed.
 */
void main(){
  List<String> items = [
    'apple',
    'banana',
    'apple',
    'orange',
    'banana',
    'grape',
  ];

  int originalItemsNumber = items.length;

  Set<String> uniqueItems = items.toSet();

  int uniqueItemsNumber = uniqueItems.length;

  if (uniqueItemsNumber <=  originalItemsNumber){
    print("Duplicate items have been removed.");
  } else {
    print("Duplicate items have been not removed.");
  }

}