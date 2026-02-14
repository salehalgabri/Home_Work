/**
 * Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
 */
 class Book {
  String _title;
  int _pages;

  Book({required String title, required int pages}) : _title = title, _pages = pages;

  String get title => _title;
  int get pages => _pages;

  set title(String title) {
    if (title.isEmpty) {
      print("Invalid title");
    }else {
    _title = title;
    }
  }

  set pages(int pages) {
    if (pages <= 0) {
      print("Invalid pages");
    }else {
    _pages = pages;
    }
  }

  int get readingTime => _pages * 2;
 }

 void main() {
  Book book = Book(title: "Book", pages: 100);
  print("Title: ${book.title}");
  print("Pages: ${book.pages}");
  print("Reading Time: ${book.readingTime}");

  book.title = "";

  book.pages = -10;

 }