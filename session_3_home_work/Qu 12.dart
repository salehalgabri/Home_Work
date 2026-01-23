/**
 * Question 12

Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.
 */


void main(){
  Map<String,dynamic> contact = {
    "name": "saleh",
    "phone" : null,
  };


  if (contact["phone"]  == null) {
    print("This Phone Number is Null");
    contact["phone"] = "+967 123456789";
    print(contact.length);
  }

  

  

}