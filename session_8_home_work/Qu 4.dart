/**
 * Q4
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.
 */
 class Product {
  String _name;
  double _price;

  Product({required String name, required double price}) : _name = name, _price = price;

  String get name => _name;
  double get price => _price;

  set name(String name) {
    if (name.isEmpty) {
      print("Invalid name");
    }else {
    _name = name;
    }
  }

  set price(double price) {
    if (price < 0) {
      print("Invalid price");
    }else {
    _price = price;
    }
  }

  double get discountedPrice => _price * 0.9;
 }

 void main() {
  Product apple = Product(name: "Apple", price: 100);
  print("Name: ${apple.name}");
  print("Price: ${apple.price}");
  print("Discounted Price: ${apple.discountedPrice}");

  apple.name = "";

  apple.price = -10;

 }