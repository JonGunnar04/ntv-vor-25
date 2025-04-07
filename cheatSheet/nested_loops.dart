void main() {
  // List animalsList = [['Fiskur', 'Froskur'], ['Hundur', 'Hestur']];
  //
  // for(int i = 0; i < animalsList.length; i++){
  //   for(int j = 0; j < animalsList[i].length; j++){
  //     print(animalsList[i][j]);
  //   }
  // }
  //
  //
  // // For every set of animalsList
  // for(List animalsSet in animalsList){
  //
  //   // For every animal in animalsSet
  //   for(String animal in animalsSet){
  //     print(animal);
  //   }
  // }

  // Prenta út stjörnurnar
  // *
  // **
  // ***
  // ****
  // *****

  List starsList = [
    ['*', '**', '***'],
    ['****', '*****'],
  ];

  for (List stars in starsList) {
    for (String star in stars) {
      print(star);
    }
  }

  // ** Bónus Challenge **
  // email validator, prentið út email sem eru valid emails

  List<String> emails = [
    'example1@gmail.com',
    'donkey.is',
    'example2@hotmail.com',
    'atli.yahoo.is',
    'example3@yahoo.com',
    'hello@world.com',
    'shrek123.com',
    'user@dart.com',
  ];

  for(int i = 0; i < emails.length; i++){
    if(emails[i].contains('@')){
      print(emails[i]);
    }
  }


  // ----- ForEach -----

  List tvShows = ['From', 'White Lotus', 'godless', 'Breaking Bad', 'Sons of Anarchy',];

  tvShows.forEach((tvShow){
    print(tvShow);
  });

  List numbers = [1,2,3,4,5];

  numbers.forEach((e){
    print(e);
  });


  // Tímaverkefni

  // Nota nested loops til að prenta út

  // *****
  // *****
  // *****
  // *****
  // *****

  //     *
  //    **
  //   ***
  //  ****
  // *****

  // 1
  // 12
  // 123
  // 1234
  // 12345

  //   *
  //  ***
  // *****
  //  ***
  //   *


}

