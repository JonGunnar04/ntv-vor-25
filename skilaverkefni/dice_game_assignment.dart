import 'dart:io';
import 'dart:math';

// Dice class
class Dice {
  int sides;

  Dice({this.sides = 6});

  int roll() {
    return Random().nextInt(sides) + 1;
  }
}

// Player class
class Player {
  String? name;
  int score;
  Player({this.name, this.score = 0});

  int rollDice(List<Dice> diceList) {
    int roundTotal = 0;
    for (var dice in diceList) {
      int rollResult = dice.roll();
      roundTotal += rollResult;
    }
    score += roundTotal;
    return roundTotal;
  }
}

// Game class
class GameManager {
  Player player1;
  Player player2;
  int rounds;
  List<Dice> dicePair = [Dice(), Dice()];

  GameManager({required this.player1, required this.player2, this.rounds = 3});

  // Þetta er functionið sem höndlar allar lotur og gefur stöðu á stigum
  void play() {
    for (int round = 1; round <= rounds; round++) {
      print('\n----- ROUND $round -----');

      int rollnr1 = player1.rollDice(dicePair);
      print('${player1.name} rolled $rollnr1!\nTotal Score: ${player1.score}');

      int rollnr2 = player2.rollDice(dicePair);
      print('${player2.name} rolled $rollnr2!\nTotal Score: ${player2.score}');
    }
    determineWinner();
  }

  // Þetta er functionið sem tekur því hver vann
  void determineWinner() {
    print('\n----- FINAL SCORE -----');
    print('${player1.name}: ${player1.score}');
    print('${player2.name}: ${player2.score}');
    if (player1.score > player2.score) {
      print('\n${player1.name} wins!');
    } else if (player2.score > player1.score) {
      print('\n${player2.name} wins!');
    } else {
      print("\nIt's a tie!");
    }
    print('\n----- END OF GAME -----');
  }
}

void main() {
  print('\nWelcome to Jón Gunnars Dice Game! Good luck to you both!');
  print('Enter name for Player 1:');
  String name1 = stdin.readLineSync().toString();
  if (name1.isEmpty) {
    name1 = 'Player 1';
  }
  print('Enter name for Player 2:');
  String name2 = stdin.readLineSync().toString();
  if (name2.isEmpty) {
    name2 = 'Player 2';
  }
  Player player1 = Player(name: name1);
  Player player2 = Player(name: name2);
  GameManager game = GameManager(player1: player1, player2: player2, rounds: 3);
  game.play();
}