import 'package:libclick/classes/book.dart';

class Library {
  String name;
  String description;
  List<Book> books = [];

  Library(this.name, this.description);

  void addBook(Book book) {
    books.add(book);
    print("Book '${book.title}' added to library");
    print('---');
  }

  void showBooks() {
    for (Book book in books) {
      book.displayInfo();
      print('---');
    }
  }
}
