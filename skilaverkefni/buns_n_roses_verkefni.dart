import 'dart:io';

void main() {
  // Greeting and menu display
  print("\nWelcome to Johnny's Burger Joint!");
  print('Here is our menu:');

  // Declaring every list and variable in this program
  List burgers = [
    'Plain Burger - \$5.00',
    'Cheese Burger - \$4.50',
    'Bacon Burger - \$7.00',
    'Chicken Burger - \$6.50',
  ];
  List prices = [5.00, 4.50, 7.00, 6.50];
  List order = [];
  double totalPrice = 0.0;

  // Printing the menu
  for (int i = 0; i < burgers.length; i++) {
    print('${i + 1} ${burgers[i]}');
  }

  // Main ordering loop
  while (true) {
    try {
      if (order.isNotEmpty) {
        print('Total: \$$totalPrice');
      }
      print('\nPlease enter which item you would like, (enter "exit" to finish and "remove" to  remove an item)',);
      String input = stdin.readLineSync().toString();
      // Exit condition
      if (input.toLowerCase() == 'exit') {
        if (order.isEmpty) {
          print('You had nothing on your order.');
        } else {
          print('\nYour summary:');
          for (int i = 0; i < order.length; i++) {
            print('${i + 1} ${order[i]}');
          }
          print('Your total is: \$$totalPrice');
        }
        break;
      } else if (input.toLowerCase() == 'remove') {
        // Remove condition
        if (order.isEmpty) {
          print('Your order is empty');
        } else {
          print('What would you like to remove?');
          int removenumber = int.parse(stdin.readLineSync()!) - 1;
          if (removenumber >= 0 && removenumber < order.length) {
            print('Removed ${order[removenumber]} from your order.');
            order.removeAt(removenumber);
            totalPrice -= prices[removenumber];
            for (int i = 0; i < order.length; i++) {
              print('${i + 1} ${order[i]}');
            }
          }
        }
      } else {
        // Adding an item to an order
        int index = int.parse(input) - 1;
        if (index >= 0 && index < burgers.length) {
          order.add(burgers[index]);
          totalPrice += prices[index];
          print('Added ${burgers[index]} to your order');
          print('\nYour order:');
          for (int i = 0; i < order.length; i++) {
            print('${i + 1} ${order[i]}');
          }
        } else {
          print('invalid selection');
        }
      }
    } // Catching an error in the While Loop
    catch (e) {
      print('Invalid Input');
    }
  }
}
