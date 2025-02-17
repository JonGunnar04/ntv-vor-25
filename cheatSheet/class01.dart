import 'dart:io';

import 'package:ntv_vor_25/methods.dart';
void main(List<String> arguments) {
  /*
    0. Create a personal message. Use a variable to represent a person's name, and print a
    message to that person. Your message should be simple, such as 'Good morning
    Hjörtur, would you like to learn Dart strings today?'
    Store Message and Name in seperate variable.
   */

  String name = 'Jón Gunnar';
  print('Good morning $name, would you like to learn Dart Strings today?');

  /* 1. Find a quote from a famous person you admire. Print the quote and the name of its
  author. Your output should look something like the following, including the
  quotation marks:
  1. Albert Einstein once said, 'A person who never made a mistake never tried
  anything new.'
  */
  String author = 'Walt Disney';
  String quote = 'If you can dream it, you can do it';
  print('$author once said, $quote');

  /*
    2. Assign a message to a variable, and print that message. Then change the value of
  the variable to a new message, and print the new message.
   */
  String message = 'This is a message';
  print(message);
  message = 'but this is a different message';
  print(message);

  /*
    3.  Remove all the spaces from the rhyme. And print the modified rhyme.
   */
  String NureseryRyhme = "Eena, meena, mina, mo, Catch a mouse by the toe; If he squeals let him go, Eeena, meena, mina, mo.";
  print(NureseryRyhme.replaceAll(' ', ''));
  /*
   4. Prompt a user for their full name (first name and last name)
    1. Store the users entry.
    2. Display the users entry with every letter being capitalised.
    3. Replace the first name with your name, and display it.
    4. Capitalise and display the users full name with each word having a capital
    first letter, and the other letters being lowercase.
   */

  print('What is your name?');
  String firstName = stdin.readLineSync().toString();
  print('Hello $firstName, but what is your last name?');
  String lastName = stdin.readLineSync().toString();
  print('Hello, $firstName $lastName');
  List<String> names = firstName.split(' ');
  String firstNameCap = firstName[0].toUpperCase();
  print(firstName);


  /*
    5. Display the following SSN on the correct Format:
      F.x. 2006892409
   */
  String SSN1 = "200689-2409";
  String SSN2 = "200689 2409";
  String SSN3 = "2 006 8924 09";
  /*
  Bónus task calculate the age from the SSN.
   */
}
