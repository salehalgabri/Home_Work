/**
 * Question 11

Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.
 */

import 'dart:io';

void main(){
  

  num generalDiscount = 0.10;
  num studentDiscount = 0.15;
  num totalDiscount = 0.20;

  print("Enter the purchase transaction amount:");
  num purchases = num.parse( stdin.readLineSync()!);

  if (purchases >= 2000) {
    num discountedAmount = purchases * totalDiscount;
    print("You have a ${totalDiscount * 100}% discount. \nThe discount amount is:${discountedAmount}\nThe total amount due is:${purchases - discountedAmount}");
  } else {
    bool isStudent = false;
    print('Are you a student?\n1. Yes\n2. No');
    isStudent = int.parse(stdin.readLineSync()!) == 1 ;
    if (isStudent) {
    num discountedAmount = purchases * studentDiscount;
    print("You have a ${studentDiscount * 100}% discount. \nThe discount amount is:${discountedAmount}\nThe total amount due is:${purchases - discountedAmount}");
    } else {
    num discountedAmount = purchases * generalDiscount;
    print("You have a ${generalDiscount * 100}% discount. \nThe discount amount is:${discountedAmount}\nThe total amount due is:${purchases - discountedAmount}");
    }
  }
  

  

}