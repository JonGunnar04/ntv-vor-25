void main(List<String> arguments){
  String firstName = 'Jon';
  String lastName = 'Gunnar';
  print('Hi $firstName $lastName');
  // Hér prentar út Hi Jon Gunnar

  String fullName = firstName + ' ' + lastName;
  print('Hi $fullName');

  String SSN = '270804-2330';
  String fixSSN = SSN.replaceAll('-', '');
  //replace.All er notað til þess að taka í burtu fyrri kóðann
  int ssnLength = fixSSN.length;
  print(ssnLength);

  String birthDate = SSN.substring(0, 6);
  print(birthDate);

  String email = 'jonKarls@icloud.com';
  print(email.toLowerCase());
}