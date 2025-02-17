import 'dart:convert';
import 'dart:io';

void main(List<String> arguments){
/*
  print('Hvað er uppáhalds tala þín');
  String? inputNumber = stdin.readLineSync().toString();
  print('Hún er $inputNumber');
  int result = 7 * int.parse(inputNumber);
  print('7 sinnum $inputNumber er $result');

  int number1 = 8;
  int number2 = 3;
  double result2 = number1 / number2;
  print(result2.toStringAsFixed(3));

  print('What is your Name?');
  String firstName = stdin.readLineSync(encoding: utf8).toString();
  print('Hello $firstName');
  print('but what is your last name?');
  String lastName = stdin.readLineSync().toString();
  firstName = "Klemenz";
  print('ok then, hello $firstName $lastName');
*/

  String firstName = 'jon Gunnar';
  String lastName = 'Karlsson';
  String fullName = firstName + ' ' + lastName;
  String url = 'ntv.is';


  List<String> names = firstName.split(' ');
  print(names);
  print(names[0]);
  print(names[1]);
/*
  String username = names[0] + names[1].substring(0,3) + lastName.substring(0,3);
  username = username.toLowerCase();
  print(username);
  String emailAddress = username + '@' + url;
  print(emailAddress);

 */
}