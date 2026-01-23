/**
 * Question 15

Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.
 */


void main(){
  
  Map<String,String> routers = {
    "/" : "You are currently on the homepage",
    "/products" : "You are currently on the products page.",
    "/profile" : "You are currently on the profile page",
  };

  String? current = "/profile";
  
  switch (current){
    case "/":
      print(routers[current]);
      break;
    
    case "/products":
      print(routers[current]);
      break;

    case "/profile":
      print(routers[current]);
      break;
    
    case null:
      print("There might be an error on my part; the value is not null.");
      break;
    
    default:
      print("Unknown page");
  }

}