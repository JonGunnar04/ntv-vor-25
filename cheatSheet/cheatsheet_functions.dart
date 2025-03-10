void main(){
  print("The ligth bulb is.....");
  bool myLightSwitch = true;
  myLightSwitch = turnOnOrOff(myLightSwitch);
  turnOnOrOff(myLightSwitch);
  String onOrOff = "";
  if(myLightSwitch){
    onOrOff = "ON";
  } else {
    onOrOff = "OFF!";
  }
  print(onOrOff);
}

bool turnOnOrOff (bool lightSwitch){
  return !lightSwitch;
  bool result;

  if(lightSwitch == true) {
    result = false;
  } else{
    result = true;
  }

  return result;
}

void displayLightBulbStatus (bool lightSwitch){

}