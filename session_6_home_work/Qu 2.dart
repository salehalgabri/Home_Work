/**
Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
to set the values when creating the object. - In main(), create two car objects with different data and
print their details.
*/

class Car {
  String brand;
  int year;

  Car({required this.brand, required this.year});

  void printDetails() {
    print("Brand: $brand, Year: $year");
  }
}

void main() {
  Car car1 = Car(brand: "Toyota", year: 2022);
  Car car2 = Car(brand: "Honda", year: 2021);

  car1.printDetails();
  car2.printDetails();
}
