import 'package:intl/intl.dart';

mixin Borrowable {
  bool isBorrowed = false;
  DateTime? borrowDate;
  DateTime? returnDate;
  double? finePerDay = 1.0;

  String formatDate(DateTime? date) {
    if (date == null) return 'N/A';
    return DateFormat('dd/MM/yyyy').format(date);
  }

  void borrow(int daysInBorrow) {
    if (!isBorrowed) {
      isBorrowed = true;
      borrowDate = DateTime.now();
      print('Borrow date set to ${formatDate(borrowDate)}');
      returnDate = borrowDate!.add(Duration(days: daysInBorrow));
      print('Book borrowed successfully, return in ${formatDate(returnDate)}');
    } else {
      print('Book is already borrowed');
    }
  }

  double calculateFine(DateTime returnedDate) {
    if (!isBorrowed || returnDate == null) return 0.0;

    // DateTime returnedDate = DateTime.now();
    print('Returned date is ${formatDate(returnedDate)}');

    if (returnedDate.isAfter(returnDate!)) {
      int daysPassed = returnedDate.difference(returnDate!).inDays;
      return daysPassed * finePerDay!;
    }

    return 0.0;
  }

  void returnBook(DateTime? returnedDate) {
    if (isBorrowed) {
      returnedDate ??= DateTime.now();
      double fine = calculateFine(returnedDate);
      isBorrowed = false;
      borrowDate = null;
      returnDate = null;

      if (fine > 0) {
        print('Book returned late with fine of \$${fine.toStringAsFixed(2)}');
      } else {
        print('Book returned on time');
      }
    } else {
      print('Book is not borrowed');
    }
  }
}
