void main() {
  var person = Person();
  person.id = 'id1';
  person.name = 'Quoc Anh';
  person.birthYear = 1999;
  person.getInfor();
}

abstract class PersonSample {
  int getAge();
  void getInfor();
}

class Person extends PersonSample {
  String id = '';
  String name = '';
  int _birthYear = 0;

  int get birthYear => _birthYear;

  set birthYear(int value) {
    _birthYear = value;
  }

  @override
  int getAge() {
    DateTime d = DateTime.now();
    return d.year - birthYear;
  }

  @override
  getInfor() {
    print("Person ID: $id, Name: $name, Birth Year: $birthYear, Age = ${getAge()}");
  }
}