// CLASSES

import 'dart:io';

class Person {
  String name;
  int age;
  String gender;
  String enemy;

  Person({
    required this.name,
    required this.age,
    this.gender = 'not specified',
    this.enemy = 'Gunnar',
  });

  void introduce() {
    print('Hi, I am $name and i am a $age years old $gender');
  }

  void curseEnemy() {
    print('Damn you $enemy!');
  }
}

// VEHICLE CLASS

class Vehicle {
  String brand;
  int year;

  Vehicle({required this.brand, required this.year});

  void displayInfo() {
    print('$brand - $year');
  }
}

// CLASS THAT INHERITS VEHICLE CLASS

class Car extends Vehicle {
  int doors;
  String type;
  int mileage;

  Car({
    required this.doors,
    required this.type,
    required this.mileage,
    required super.brand,
    required super.year,
  });

  void showMoreInfo() {
    print('Doors: $doors - Type: $type - Mileage: $mileage');
  }
}

Car car1 = Car(
  doors: 5,
  type: 'Avensis',
  mileage: 120000,
  brand: 'Toyota',
  year: 2005,
);

void main() {
  car1.displayInfo();
  car1.showMoreInfo();

  // biðja um nafn
  print('Enter your name please:');
  String name = stdin.readLineSync().toString();

  // biðja um aldur
  print('Enter your age please:');
  int age = int.parse(stdin.readLineSync()!);

  // biðja um kyn
  print('Enter your gender *OPTIONAL*');
  String gender = stdin.readLineSync().toString();

  // biðja um enemy
  print('Who is your enemy');
  String enemy = stdin.readLineSync().toString();

  Person user = Person(name: name, age: age, gender: gender, enemy: enemy);

  user.introduce();
  user.curseEnemy();

  /*
    Person person1 = Person(name: 'Jón', age: 20, gender: 'male');
    Person person2 = Person(name: 'Gunnar', age: 25, gender: 'male');
    person1.introduce();
    person2.introduce();*/
}

String validateInput(String input) {
  if (input == null || input.trim().isEmpty) {
    print('Input cannot be empty or whitespace');
    return 'Invalid';
  }
  return input;
}
