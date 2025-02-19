import 'dart:io';

void main(List<String> arguments) {
  /*
  int personAge = 14;
  int driverLicenseAge = 17;
  bool doesPersonHaveDriverLicense = false;
  print(personAge);
  if(personAge >= driverLicenseAge && doesPersonHaveDriverLicense == true) {
    print('Þú mátt keyra');
  } else if(personAge >= driverLicenseAge && doesPersonHaveDriverLicense == false) {
    print('Hringdu í ökukennara og lærðu að keyra');
  } else {
    print('Taktu strætó');
  }


  if(!(5>7)){
    print('This is true');
  }
  */
  int i = 0;
  bool authenticated = false;

  while(!authenticated) {
    String myPassword = 'password123';
    String username = 'admin';

    print('Enter your username');
    String loginUser = stdin.readLineSync().toString();
    print('Enter Your Password');
    String loginPassword = stdin.readLineSync().toString();

    if (loginUser.toLowerCase() == username.toLowerCase() && loginPassword == myPassword) {
      print('You are in, Welcome');
      authenticated = true;
    } else {
      print('Login failed, username or password incorrect');
      print('Please try Again');
    }
  }



}
