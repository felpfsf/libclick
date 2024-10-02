class Author {
  String name;
  String surname;

  Author(this.name, this.surname);

  @override
  String toString() {
    return '$name $surname';
  }
}
