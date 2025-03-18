import 'dart:io';


void main(){
  void printMyNameAndJob(String name, String job){
    print('Ég heiti $name og er $job');
  }

  printMyNameAndJob('Jón', 'Öryggisvörður');
  printMyNameAndJob('Patrik', 'Nemandi');

  // Increment
  int increment(int num1, int num2){
    return num1 + num2;
  }

  int sum = increment(5, 5);
  print(sum);

  // Decrement
  int decrement(int num1, int num2){
    return num1 - num2;
  }
  int decrementsum = decrement(20, 10);
  print(decrementsum);

  print('Type a number');
  int input1 = int.parse(stdin.readLineSync()!);
  print('Type another number');
  int input2 = int.parse(stdin.readLineSync()!);

  int inputsum = increment(input1, input2);
  print(inputsum);

  // Void skilar engu, það er ekkert Return í því
  // int ef við viljum skila tölu
  // String ef við viljum skila streng

  // positional argument
  void positional(String name, int age){
    print('My name is $name and i am $age years old');
  }
  positional('Jón', 20);

  // named argument
  void named({String name = 'Default', int age = 100}){
    print('My name is $name and i am $age years old');
  }
  named(age: 20, name: 'Jón Gunnar');

  // How long till i am 50

  print('Enter your age');
  int age = int.parse(stdin.readLineSync()!);
  void ageback(int age){
    if(age >= 50){
      int decremented = age - 50;
      print('You were 50 years old $decremented years ago');
    }else{
      int howlong = 50 - age;
      print('You will be 50 years old in $howlong years');
    }
  }
  ageback(age);

  /*int howLongTill50(int age){
    return 50 - age;
  }
  int years = howLongTill50(age);
  print('In $years years you will turn 50');*/


}






/*
void main() {
  bool myLightSwitch = true;
  while(true) {
    myLightSwitch = turnOnOrOff(myLightSwitch);
    displayLightBulbStatus(myLightSwitch);
    print("Should we check again?");
    stdin.readLineSync();
  }
}

bool turnOnOrOff(bool lightSwitch) {
  return !lightSwitch;
}
void displayLightBulbStatus (bool lightSwitch) {
  print("The light is " );
  print(lightSwitch ? "On" : "Off");
}
*/
