import 'dart:io';

// TÍMAVERKEFNI

// ** REIKNIVÉL **
// prompta user - Biðja um 2 tölur og lista af aðgerðum t.d. [ + - / * ]
// Þið ráðið hvort þið biðjið um tölurnar í sitthvoru lagi eða báðar í einu.
// s.s annaðhvort tvö input erða inline skrifa þá t.d '1+1' eða '1/1'
// nota bara function og while loops

void divide(){
  print('Enter a number');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Now enter the number you want it divided by');
  int num2 = int.parse(stdin.readLineSync()!);
  double sum = num1 / num2;
  print('$num1 / $num2 = $sum');
}

void addition(){
  print('Enter a number');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Now enter the number you want it addition by');
  int num2 = int.parse(stdin.readLineSync()!);
  int sum = num1 + num2;
  print('$num1 + $num2 = $sum');
}

void subtraction(){
  print('Enter a number');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Now enter the number you want it subtracted by');
  int num2 = int.parse(stdin.readLineSync()!);
  int sum = num1 - num2;
  print('$num1 - $num2 = $sum');
}

void multiplication(){
  print('Enter a number');
  int num1 = int.parse(stdin.readLineSync()!);
  print('Now enter the number you want it multiplied by');
  int num2 = int.parse(stdin.readLineSync()!);
  int sum = num1 * num2;
  print('$num1 * $num2 = $sum');
}


void main(){
  print('There are 4 different types of operations,\n Divide:');
  while(true){
    print('Enter what kind of operation you would like to commit');
    String input = stdin.readLineSync().toString();
    if(input == '/'){
      divide();
    } else if(input == '+'){
      addition();
    } else if(input == '-'){
      subtraction();
    } else if(input == '*'){
      multiplication();
    } else if(input.toLowerCase() == 'exit'){
      print('Exiting...');
      break;
    } else{
      print('invalid! You can only enter "+, -, *, /, exit"');
    }
  }
}



































// ** VERKEFNI **
// Búa til classa sem heitir person
// person er með nafn, aldur og starf
// búum til method/aðferð sem prentar út greeting/hello my name is - afmæli ár bætist við aldurinn og prentar-
// svo út nýja aldurinn - Segja upp. Pretar út umsögn eða bara hætti í $job takk fyrir mig.

/*class Person{
  String name;
  String job;
  int age;

  Person(this.name, this.job, this.age);

  void greeting(){
    print('Hello my name is $name, I am currently $age years old and am a $job');
  }

  void quit(){
    print('I am quitting my job as a $job!');
    job = 'unemployed';
  }

  void birthYear(){
    int birthYear = 2025 - age;
    print('I am $age years old which means i was born in $birthYear');
  }

  void birthDay(){
    age ++;
    print('Today is my birthday which means i am now $age years old!');
  }
}

void main(){
  Person jonGunnar = Person('Jon Gunnar', 'Security Guard', 20);

  jonGunnar.greeting();
  jonGunnar.birthYear();
  jonGunnar.quit();
  jonGunnar.greeting();
  jonGunnar.birthDay();
}*/


































// Hvað er object oriented programming (OOP)?
/*
Forritunarstíll sem byggir á því að skipuleggja kóða í kringum "Hluti / object".
þessir hlutir sameina gögn og aðgerðir í einingu sem auðvelt er að endurnýta
*/

// 4 lykilatriði OOP

// 1. class (klassi)

// 2. object (hlutir)

// 3. encapsulation (hjúpun)

// 4. inheritance (arfgengni)

// DÆMI: Car class
/*
class Car {
  // eiginleikar
  String brand;
  String model;
  int speed;

  // constructor
  Car(this.brand, this.model, this.speed);

  // aðferðir
  void drive(){
    print('$brand $model er að keyra á $speed km/klst');
  }

  void brake(){
    this.speed = 0;
    print('$brand $model hefur stöðvast');
  }

}
void create(name1){
  Car  name1 = Car('Volvo', 'XC90', 140);
}

void main(){
  // Búum til objectinn Car
  Car volvoXC90 = Car('Volvo', 'XC90', 140);

  volvoXC90.drive();
  volvoXC90.brake();

// við getum notað classan/blueprintið til að
// búa til eins marga objects og við viljum

  Car avensis = Car('Toyota', 'Avensis', 65);
  avensis.drive();
  avensis.brake();

}
*/
