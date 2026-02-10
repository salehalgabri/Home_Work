/**
Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
that increases the salary. In main(), create an employee, give them a raise, and print the new
salary.
 */

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void giveRaise(double amount) {
    this.salary += amount;
  }
}

void main() {
  Employee employee = Employee("Ahmed", 50000);
  employee.giveRaise(5000);
  print("New salary: ${employee.salary}");
}