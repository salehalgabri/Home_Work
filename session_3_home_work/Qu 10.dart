/**
 * Question 10

Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.
 */
void main(){
  Map<String,dynamic> country = {
    "YE" : "+967",
    "EG" : "+20",
    "SA" : "+966",
  };

  print(country['EG']);

  country["QA"] = "+974";

  print("total: ${country.length}");

  if (country.containsKey('JO')) {
    print("The country code for Jordan is:${country['JO']}");
  }else {
    print('Jordan missing');
  }
    

  

}