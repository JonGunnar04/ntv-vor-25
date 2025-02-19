import 'dart:io';

void main(List<String> arguments) {
  /*
  input: Taka á móti símanúmeri
  Validate phone number
  símanúmer eru 7 stafir
  Notendur eiga til að skrifa símanúmer með '-'
  Notendur eiga til að skrifa símanúmer með ' '
  Notendur eiga til að hafa country code með þ.eþ '+354'
  Símanúmer byrja ekki á 0,1,2,3
   */

  bool validnumber = false;

  while (validnumber == false) {
    print('Hvað er símanúmerið þitt?');
    String phoneNumber = stdin.readLineSync().toString();
    if (phoneNumber.length == 8) {
      print('Vonandi settir þú in auka bil eða - því þá er ég búinn að taka það út fyrir þig',);
      phoneNumber = phoneNumber.replaceAll('-', '');
      phoneNumber = phoneNumber.replaceAll(' ', '');
    }
    if (phoneNumber.contains('+354') == true) {
      phoneNumber = phoneNumber.replaceAll('+354', '');
      print('Þú settir inn +354 en ég tók það út fyrir þig');
      print(phoneNumber);
    }
    int? phoneNumberStorage = int.tryParse(phoneNumber);
    if (phoneNumber.length == 7 && phoneNumberStorage is int) {
      if (phoneNumber[0] != '1') {
        if (phoneNumber[0] != '2') {
          if (phoneNumber[0] != '3') {
            if (phoneNumber[0] != '4') {
              print('Þetta er símanúmer er gilt!');
              validnumber = true;
            }
          }
        }
      }
    }
    if (!validnumber) {
      print('Símanúmerið þitt hefur villur, það þarf að vera 7 tölur og ekkert auka, Vinsamlegast reynið aftur.');
      print('Hér er símanúmerið þitt: $phoneNumber');
    }
  }
}

// if(int.parse(phonuNumber[0]) < 4)