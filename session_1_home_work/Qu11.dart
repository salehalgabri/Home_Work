/**
Question 11
How do you concatenate strings in Dart? Write an example using two variables:
firstName and lastName.
 */

void main (){
  String firstName = "Saleh",lastName = "AL-Gabri";

  //EX1:
  String fullName =  firstName + " " + lastName;
  print(fullName);


  //Ex2
  print(firstName + " " + lastName);

  //Ex3:
  print("$firstName $lastName");
}