/**
 * 125. Valid Palindrome
Easy
Topics
premium lock icon
Companies
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.

 

Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.
 

Constraints:

1 <= s.length <= 2 * 105
s consists only of printable ASCII characters.
 */

class Solution {
  bool isPalindrome(String s) {
    if (s.isEmpty) return true;

  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    if (!_isAlphanumeric(s.codeUnitAt(left))) {
      left++;
      continue; 
    }

    if (!_isAlphanumeric(s.codeUnitAt(right))) {
      right--;
      continue;
    }

    if (!_areCharsEqual(s.codeUnitAt(left), s.codeUnitAt(right))) {
      return false;
    }

    left++;
    right--;
  }

  return true;
  }
  bool _isAlphanumeric(int code) {
  return (code >= 48 && code <= 57) || 
         (code >= 65 && code <= 90) || 
         (code >= 97 && code <= 122); 
}
bool _areCharsEqual(int code1, int code2) {
  int lower1 = (code1 >= 65 && code1 <= 90) ? code1 + 32 : code1;
  int lower2 = (code2 >= 65 && code2 <= 90) ? code2 + 32 : code2;
  
  return lower1 == lower2;
}
}