import 'dart:io';
import 'dart:math';

void main(){
  int randomNumber = Random().nextInt(100);
  print('You need to guess a number from 1-100, take a guess.');
  bool sameNumber = false;
  int guesses = 0;

  while (sameNumber == false) {
    String guess = stdin.readLineSync().toString();
    int? val = int.tryParse(guess);
    if (val == null){
      print('This is a incorrect, enter a number');

    }
    int number = int.parse(guess);
    if (randomNumber > number) {
      print('go higher');
    }
    if (randomNumber < number){
      print('go lower');
    }
    if (randomNumber == number){
      print('correct');
      sameNumber = true;
    }
  }
}