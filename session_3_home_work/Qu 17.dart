/**
 * Question 17

Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
 */


void main(){
  
  double price = 7.5;
  String currency = 'USD';

  String priceStr = price.toStringAsFixed(2); 
  String tag = '$currency $priceStr';

  print('Original tag: $tag');
  print('Original length: ${tag.length}');

  int width = 15;
  String paddedTag = tag.padLeft(width);

  print('Padded tag: "$paddedTag"');
  print('Padded length: ${paddedTag.length}');

  if (paddedTag.length > tag.length) {
    print('Padding added ${paddedTag.length - tag.length} spaces to the left.');
  } else {
    print('No padding was needed.');
  }

  int id = 42;
  String idStr = id.toString().padLeft(5, '0'); // 00042

  print('Product ID formatted: $idStr (length=${idStr.length})');

}