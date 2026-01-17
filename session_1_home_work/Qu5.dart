/**
Question 5
What is the difference between var and dynamic in Dart? Provide an example of
each
 */

/**
 * The difference between var and dynamic is that var is not a data type but a keyword,
while dynamic is a data type. Also, the data type of a dynamic can be changed after
initialization in the definition, whereas the data type of var cannot be changed after
initialization. This is because var takes the first data type assigned.
 */
void main() {
  dynamic temp1 = 15;
  print(temp1);
  temp1="Saleh";
  print(temp1);


  double num1=15;
  print(num1);
  num num3=15;
  print(num3);


  var temp2 = 15;
  print(temp2);

  /*An error occurred because the data type is already reserved in memory and cannot be changed.
  This is unlike a dynamic data type, whose data type can be changed at every assignment
  because the variable's value changes at runtime.
  temp2="Saleh";
  */ 
  print(temp2);

}
