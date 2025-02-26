


import 'dart:io';

void main(){

  // Challenge 1
  /*
  int numb = 10;
  while(numb > 0){
    print(numb);
    numb--;
    if(numb == 0){
      print('Happy new year!');
    }
  }
  */

  // Challenge 2
  /*
  print('Tell me a statement to repeat back to you. Enter "quit" to end the program.');
  bool quit = false;
  while(quit == false){
    String statement = stdin.readLineSync().toString();
    if(statement != 'quit'){
      print('Your statement is: $statement');
    }if(statement == 'quit'){
      print('You decided to quit.');
      quit = true;
    }
  }
  */

  // pizza challenge
/*
  print('enter pizza toppings or "quit" to leave');

  bool pizzaPizza = true;
  while(pizzaPizza){
    String topping = stdin.readLineSync().toString();
    print('I will add $topping to your pizza');
    if(topping.toLowerCase() == 'quit'){
      pizzaPizza = false;
    }
  }

 */
  String word = 'NTV';

  for(int i = 0; i < word.length; i++){
    print(word[i]);
  }

  List pizzas = ['pepperoni','cheese','pineapple','hawaiian','margherita'];

  for(String pizza in pizzas){
    print('I love eating a $pizza pizza');
  }

}