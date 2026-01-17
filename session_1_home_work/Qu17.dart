/**
Question 17
If you need a variable that can hold any type of value and may change during
execution, which data type would you use? Write a code example to show this
 */


void main (){
  
  /* I will use the data type dynamic because this
  data type can change its value in RunTime without any errors occurring. */

  dynamic name = "Saleh";
  print(name);
  
  name= 15;
  print(name);

  name =15.5;
  print(name);

  name =false;
  print(name);

}