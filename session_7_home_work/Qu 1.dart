/*
Q1 Create a class City with attributes name and population. In main(), create two city objects and
print their details.
*/

class City {
  String name;
  int population;

  City(this.name, this.population);
}

void main() {
  City city1 = City("Riyadh", 1000000);
  City city2 = City("Jeddah", 2000000);
  print("City 1: ${city1.name}, ${city1.population}");
  print("City 2: ${city2.name}, ${city2.population}");
}
