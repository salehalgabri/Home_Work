/**
Exercise 2:

a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.

b) Print a sentence that includes all values using string interpolation.

c) Change weight to a different value and print only the updated one.
 */

void main () {
  String country = "Yemen";
  int year =2026;
  double weight = 71.5;
  bool likesCoding = true;

  print("My country is $country, and we are in the year $year, and my weight is $weight kg. Do I like programming? ${likesCoding ? "Yes, I like it." : "No, I don't like it." } ");

  weight = 73;

  print(weight);
}