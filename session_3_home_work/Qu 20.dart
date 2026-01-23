/**
 * Question 20

Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
 */


void main() {
  int age = 16;
  bool hasParent = true;
  String area = 'restricted'; 

  bool allowed;
  if (age < 18) {
    allowed = hasParent;
  } else {
    allowed = true;
  }

  switch (area.toLowerCase()) {
    case 'general':
      if (allowed) {
        print('Access granted: Welcome to the general area.');
      } else {
        print('Access denied: Under 18 must be with a parent.');
      }
      break;

    case 'restricted':
      if (!allowed) {
        print('Access denied: Under 18 must be with a parent.');
      } else if (age < 21) {
        print('Access denied: Restricted area requires age 21+.');
      } else {
        print('Access granted: Welcome to the restricted area.');
      }
      break;

    default:
      print('Invalid area. Please choose "general" or "restricted".');
  }
}
