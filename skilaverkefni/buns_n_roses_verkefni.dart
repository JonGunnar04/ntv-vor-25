import 'dart:io';

void main() {
  print('Welcome to Jóns Burger Joint');
  print('\nHere is our menu:');

  List burgers = [
    'Plain Burger - \$5.00',
    'Cheese Burger - \$4.50',
    'Bacon Burger - \$7.00',
    'Chicken Burger - \$6.50',
  ];

  List order = [];
  double totalPrice = 0.0;

  for (int i = 0; i < burgers.length; i++) {
    print('${i + 1} ${burgers[i]}');
  }

  while (true) {
    print('Please select which item you would like, (enter "exit" to finish and "remove" to  remove an item)');
    for (int i = 0; i < order.length; i++) {
      print('${i + 1} ${order[i]}\nTotal Price: $totalPrice');
      continue;
    }
    String input = stdin.readLineSync().toString();
    if (input == 'exit') {
      print('Your summary:');
      for (int i = 0; i < order.length; i++) {
        print('${i + 1} ${order[i]}');
        continue;
      }
      break;
    } else if(input == 'remove'){
      if(order.isEmpty){
        print('Your order is empty');
      }else{
        print('What would you like to remove?');
        int removeindex = int.parse(stdin.readLineSync()!) - 1;
        if(removeindex >= 0 && removeindex < order.length){
          print('Removed ${order[removeindex]} from your order.');
          order.removeAt(removeindex);
        }
      }
    }
    else {
      int index = int.parse(input) - 1;
      if (index >= 0 && index < burgers.length) {
        order.add(burgers[index]);
        print('Added ${burgers[index]}');
      } else {
        print('invalid selection');
      }
    }
  }
}
