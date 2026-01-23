/**
 * Question 14

Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.
 */


void main(){
  
  List<int>? numbers = [10,2,3,4,5,99];

  if ( numbers == null || numbers!.isEmpty  ) {
    print("No scores");
  } else {
    num sum = numbers.first + numbers.last;

    print("Sum:$sum");

    if (sum >= 40){
        print('The total is greater than 40');
    }
    else {
        print('The total is no greater than 40');
    }
  }

}