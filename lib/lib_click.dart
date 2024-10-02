import 'package:libclick/classes/author.dart';
import 'package:libclick/classes/book.dart';
import 'package:libclick/classes/library.dart';

void main() {
  Author author1 = Author('JRR', 'Tolkien');
  Author author2 = Author('Douglas', 'Adams');

  DigitalBook book1 = DigitalBook(
    'The Lord of the Rings',
    author1,
    'A classic book about Middle-earth',
    '978-0-393-92385-8',
    '10.5 MB',
    'PDF',
  );

  DigitalBook book2 = DigitalBook(
    'The Hitchhiker\'s Guide to the Galaxy',
    author2,
    'A sci-fi comedy series',
    '978-0-393-92385-8',
    '10.5 MB',
    'PDF',
  );

  Library library1 = Library(
    'Dart Books',
    'A collection of books for Dart developers',
  );

  library1.addBook(book1);
  library1.addBook(book2);

  print('--- Books in the library ---');
  library1.showBooks();

  print('--- Borrowing a book ---');
  book2.borrow(7);

  book2.borrowDate = DateTime.now().subtract(Duration(days: 10));
  book2.returnDate = book2.borrowDate!.add(Duration(days: 7));

  print('--- Returning a book ---');
  DateTime simulatedReturnDate = book2.returnDate!.add(Duration(days: 5));
  book2.returnBook(simulatedReturnDate);
}
