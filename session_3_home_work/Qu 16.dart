/**
 * Question 16

Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
 */


void main(){
  
  int a = 10;
  int b = 5;
  int c = 20;


  bool exp1 = a > b;                      
  bool exp2 = (c > a) && (b <= a);       
  bool exp3 = (a == b) || (c >= 15);      


  print('a = $a, b = $b, c = $c');
  print('exp1 (a > b) = $exp1');
  print('exp2 (c > a && b <= a) = $exp2');
  print('exp3 (a == b || c >= 15) = $exp3');


  if (exp2) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }

}