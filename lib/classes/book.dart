import 'package:libclick/classes/author.dart';
import 'package:libclick/mixin/borrowable.dart';

class Book {
  String title;
  Author author;
  String description;

  Book(this.title, this.author, this.description);

  void displayInfo() {
    print(
        'Title: $title - Author: ${author.toString()} - Description: $description');
  }
}

class DigitalBook extends Book with Borrowable {
  String isbn;
  String fileSize;
  String fileType;

  DigitalBook(
    super.title,
    super.author,
    super.description,
    this.isbn,
    this.fileSize,
    this.fileType,
  );

  @override
  void displayInfo() {
    super.displayInfo();
    print('ISBN: $isbn - File Size: $fileSize - File Type: $fileType');
  }
}

class PrintBook extends Book with Borrowable {
  String pages;

  PrintBook(
    super.title,
    super.author,
    super.description,
    this.pages,
  );

  @override
  void displayInfo() {
    super.displayInfo();
    print('Pages: $pages');
  }
}
