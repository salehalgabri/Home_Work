/**
Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
courses: one with custom duration and one with the default. Print both.
*/

class Course {
  String title;
  int duration;

  Course({required this.title, this.duration = 3});
}

void main() {
  Course course1 = Course(title: "Course 1", duration: 6);
  Course course2 = Course(title: "Course 2");
  print("Course 1: ${course1.title}, ${course1.duration}");
  print("Course 2: ${course2.title}, ${course2.duration}");
}