class Person {
  String name;
  DateTime? birthday;
  int? get birthYear => birthday?.year;

  Person(this.name, this.birthday) {
    // Initialization code
  }
  Person.born(String name) : this(name, null);

  void describe() {
    print('Person: $name');
    // Workaround for type promotion
    var birthday = this.birthday;
    if (birthday != null) {
      int years = DateTime.now().difference(birthday).inDays ~/ 365;
      print('Born $birthYear ($years years ago)');
    } else {
      print('Not born yet');
    }
  }
}

void main() {
  var parthiv = Person('Parthiv', DateTime(2009, 2, 14));
  parthiv.describe();
}
