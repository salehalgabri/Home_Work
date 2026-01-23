import 'dart:io';

/**
 * Question 13

Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.
 */


void main(){
  
  int mark  = 0;

  print("Enter Your Mark:");
  mark = int.parse(stdin.readLineSync()!) ;

  String grade ="";
  if (mark >= 90 && mark <= 100){
    grade = 'A';
  }
  else if (mark >= 80 && mark <= 89){
    grade = 'B';
  }
    else if (mark >= 70 && mark <= 79){
    grade = 'C';
  }
      else if (mark >= 60 && mark <= 69){
    grade = 'D';
  }else {
    grade = "Unknown";
  }

  switch (grade){
    case 'A':
      print("Your Grade is: A");
      break;
    
    case 'B':
      print("Your Grade is: B");
      break; 
    
    case 'C':
      print("Your Grade is: C");
      break; 
    
    case 'D':
      print("Your Grade is: D");
      break; 
  }

}