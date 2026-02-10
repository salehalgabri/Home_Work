/**
Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
set its initial values using a constructor. - Then change the age of the object and print the updated
details.
*/

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  void printDetails() {
    print("Name: $name, Age: $age");
  }
}

void main() {
  Person person = Person(name: "John", age: 30);
  person.printDetails();
  person.age = 31;
  person.printDetails();
}
