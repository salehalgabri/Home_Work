/**
 * 2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order.
 */

import 'dart:io';

class FoodItem {
  String name;
  double price;
  String category;

  FoodItem({required this.name, required this.price, required this.category});
}

class Order {
  List<FoodItem> items = [];

  void addItem(FoodItem item) {
    items.add(item);
    print('${item.name} added to order.');
  }

  double calculateTotal() {
    double total = 0;
    for (var item in items) {
      total += item.price;
    }
    return total;
  }

  void displayOrder() {
    if (items.isEmpty) {
      print('Order is empty.');
      return;
    }
    print('\n--- Your Order ---');
    for (var item in items) {
      print('${item.name} - \$${item.price.toStringAsFixed(2)}');
    }
    print('------------------');
    print('Total: \$${calculateTotal().toStringAsFixed(2)}');
  }
}

void main() {
  List<FoodItem> menu = [
    FoodItem(name: 'Pizza', price: 12.99, category: 'Main Course'),
    FoodItem(name: 'Burger', price: 8.99, category: 'Main Course'),
    FoodItem(name: 'Pasta', price: 10.99, category: 'Main Course'),
    FoodItem(name: 'Salad', price: 6.99, category: 'Appetizer'),
    FoodItem(name: 'Fries', price: 3.99, category: 'Side'),
    FoodItem(name: 'Coke', price: 1.99, category: 'Drinks'),
    FoodItem(name: 'Water', price: 0.99, category: 'Drinks'),
  ];

  Order currentOrder = Order();
  String choice = '';

  print('Welcome to the Food Delivery App!');

  do {
    print('\n--- Menu ---');
    for (int i = 0; i < menu.length; i++) {
      print('${i + 1}. ${menu[i].name} - \$${menu[i].price} (${menu[i].category})');
    }
    print('${menu.length + 1}. View Order');
    print('${menu.length + 2}. Checkout');
    print('0. Exit');
    stdout.write('Enter your choice: ');
    choice = stdin.readLineSync()!;

    if (choice.isNotEmpty) {
      int index = int.tryParse(choice) ?? -1;

      if (index > 0 && index <= menu.length) {
        currentOrder.addItem(menu[index - 1]);
      } else if (index == menu.length + 1) {
        currentOrder.displayOrder();
      } else if (index == menu.length + 2) {
        print('\n--- Checkout ---');
        currentOrder.displayOrder();
        print('Thank you for your order!');
        break;
      } else if (index == 0) {
        print('Exiting...');
      } else {
        print('Invalid choice. Please try again.');
      }
    }
  } while (choice != '0');
}