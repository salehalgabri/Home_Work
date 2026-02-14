/**
 * Q2

Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names and years less than 1886 (first car invention).
- Add getters for both.
- In main(), demonstrate creating two car objects (one valid, one invalid input).
 */

class Car {
  String? _brand;
  int? _year;

  Car({String? brand, int? year}) : _brand = brand, _year = year;

  String? get brand => _brand;
  int? get year => _year;

  set brand(String brand) {
    if (brand.isEmpty) {
      print("Brand name cannot be empty.");
    }else {
    _brand = brand;
    }
  }

  set year(int year) {
    if (year < 1886) {
      print("Year must be 1886 or later.");
    }else if(year > 0) {
    _year = year;

    }
  }
}

void main() {
  Car car1 = Car(brand: "Toyota", year: 2022);
  print("Car 1: ${car1.brand} ${car1.year}");

  Car car2 = Car(year: 2023);
  car2.brand = "";
  print("Car 2: ${car2.brand} ${car2.year}");

  Car car3 = Car(brand: "Ford");
  car3.year = 1800;
  print("Car 3: ${car3.brand} ${car3.year}");
}
