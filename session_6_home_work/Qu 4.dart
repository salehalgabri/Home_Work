/**
Q4. Class with Default Attribute Value - Create a class Product with attributes name and price. -
Give price a default value of 0. - Create two objects: one with a custom price and one with the
default price. Print their details.
*/

class Product {
  String name;
  int price;

  Product({required this.name, this.price = 15});

  void printDetails() {
    print("Name: $name, Price: $price");
  }
}

void main() {
  Product product1 = Product(name: "Product 1", price: 10);
  Product product2 = Product(name: "Product 2");

  product1.printDetails();
  product2.printDetails();
}
