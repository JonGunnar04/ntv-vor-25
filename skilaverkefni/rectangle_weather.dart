

import 'dart:io';

void main(){
  print('Enter rectangle height:');
  int input = int.parse(stdin.readLineSync()!);
  print('Enter rectangle width:');
  int input2 = int.parse(stdin.readLineSync()!);
  Rectangle rectangle1 = Rectangle(input, input2);
  rectangle1.area();
}



class Rectangle{
  int height;
  int width;

  Rectangle(this.height, this.width);


  void area(){
    int area = height * width;
    print('The area of the rectangle is: $area');
  }
}


// both width and height need to be a positive number
// a method called area() which should return the are of the rectangle when called (height x width)