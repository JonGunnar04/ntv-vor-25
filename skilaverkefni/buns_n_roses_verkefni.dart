import 'dart:io';
import 'dart:math';

void main() {
  print('Welcome to Jóns Burger Joint!');
  print('\nHere is our menu:');

  List burgers = [
    'Plain Burger - \$5.00',
    'Cheese Burger - \$4.50',
    'Bacon Burger - \$7.00',
    'Chicken Burger - \$6.50',
  ];
  List prices = [5.00, 4.50, 7.00, 6.50];
  List test = [];

  List order = [];
  double totalPrice = 0.0;

  for (int i = 0; i < burgers.length; i++) {
    print('${i + 1} ${burgers[i]}');
  }

  while (true) {
    print('\nPlease enter which item you would like, (enter "exit" to finish and "remove" to  remove an item)',);

    try {
      for (int i = 0; i < order.length; i++) {
        print('${i + 1} ${order[i]}');
      }
      if (order.isNotEmpty) {
        print('Total: \$$totalPrice');
      }
      String input = stdin.readLineSync().toString();
      if (input == 'exit') {
        if (order.isEmpty) {
          print('You had nothing on your order.');
        } else {
          print('Your summary:');
          for (int i = 0; i < order.length; i++) {
            print('${i + 1} ${order[i]}');
          } print('Your total is: \$$totalPrice');
        }
        break;
      } else if (input == 'remove') {
        if (order.isEmpty) {
          print('Your order is empty');
        } else {
          print('What would you like to remove?');
          int removenumber = int.parse(stdin.readLineSync()!) - 1;
          if (removenumber >= 0 && removenumber < order.length) {
            print('Removed ${order[removenumber]} from your order.');
            order.removeAt(removenumber);
            test.removeAt(removenumber);
            totalPrice -= prices[removenumber];
          }
        }
      } else {
        int index = int.parse(input) - 1;
        if (index >= 0 && index < burgers.length) {
          order.add(burgers[index]);
          test.add(prices[index]);
          totalPrice += prices[index];
          print('Added ${burgers[index]} to your order');
          print('Your order:');
        } else {
          print('invalid selection');
        }
      }
    } catch (e) {
      print(e);
    }
  }
}
