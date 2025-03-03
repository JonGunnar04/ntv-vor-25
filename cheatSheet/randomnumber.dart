import 'dart:io';
import 'dart:math';


void main(){
  print('Select which difficulty you would like, 1 = easy, 2 = medium, 3 = hard.');
  bool sameNumber = false;
  int tries = 0;

  int difficulty = int.parse(stdin.readLineSync()!);
  int randomNumber = Random().nextInt(100);
  if(difficulty == 2){
    randomNumber = Random().nextInt(500);
  }else if(difficulty == 3){
    randomNumber = Random().nextInt(1000);
  }
  print('You chose difficulty nr$difficulty, good luck! \nNow take a guess:');


  while (sameNumber == false) {
    try {
      tries +=1;
      int guess = int.parse(stdin.readLineSync()!);
      if (randomNumber > guess) {
        print('go higher');
      }else if (randomNumber < guess) {
        print('go lower');
      }
      if (randomNumber == guess) {
        print('correct, it took you $tries tries to guess the correct number!');
        sameNumber = true;
      }
    } catch (e){
      print('Invalid Input, try again!');
    }
  }
}