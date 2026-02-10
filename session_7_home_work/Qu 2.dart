/*
Q2 Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns
the temperature in Fahrenheit. In main(), create an object and print the converted value.
*/

class Temperature {
  double celsius;

  Temperature(this.celsius);

  double toFahrenheit() {
    return (this.celsius * 1.8) + 32;
  }
}

void main() {
  Temperature temp = Temperature(25);
  print("Temperature in Fahrenheit: ${temp.toFahrenheit()}");
}
