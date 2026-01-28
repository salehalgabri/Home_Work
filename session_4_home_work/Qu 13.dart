/**
 * Q10
Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'].
Count how many times each name appears.
Print only the names that appear more than once.
 */

void main() {
  
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];

  Set<String> setNames = names.toSet();
  Map<String,int> countOfNames = Map.fromIterable(
    setNames,
    key:(element) => element,
    value: (element) => 0,
  );
    
  for(String n in names) {
  if (countOfNames.containsKey(n)){
    countOfNames[n] =countOfNames[n]! + 1;
    
  }

  }
  print(countOfNames);

  for(String i in countOfNames.keys){
    if(countOfNames[i]! >  1){
      print(i);

    }
  }
}