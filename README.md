# Library Click

A simple command-line application that allows users to manage their library.

## Getting Started

This project is a starting point for a Dart
[console application](https://dart.dev/guides/libraries/creating-library-packages#type-of-libraries)
package.

### Prerequisites

You need to have the [Dart SDK](https://dart.dev/get-dart) installed on your
machine.

## Usage

### Add a book to your library

To add a book to your library, use the `add` command followed by the book's
title, author, and description:

```bash
dart bin/libclick.dart add "The Great Gatsby" F. Scott Fitzgerald "A classic novel about the American Dream"
```

### Borrow a book

To borrow a book, use the `borrow` command followed by the book's title and
the number of days you want to borrow it for:

```bash
dart bin/libclick.dart borrow "The Great Gatsby" 7
```

### Return a book

To return a book, use the `return` command followed by the book's title and
the date you want to return it:

```bash
dart bin/libclick.dart return "The Great Gatsby" 2022-01-01
```

### Display your library

To display your library, use the `show` command:

```bash
dart bin/libclick.dart show
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/feferreira/libclick/issues
