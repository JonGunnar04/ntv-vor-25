import 'dart:io';

// void main(){
//   // BakeCake DevilsCake = BakeCake();
//   // DevilsCake.preHeatOven();
//   // DevilsCake.putFlourInBettyCrocker();
//   // DevilsCake.putInOven();
//
//   // Dog dog = Dog('Snati');
//   // Bird bird = Bird('Tito');
//   //
//   // dog.poop();
//   // bird.poop();
//   //
//   // bird.makeSound();
//   // dog.makeSound();
//
//   BMW520d myCar = BMW520d();
//   myCar.speed();
//   myCar.modifications();
//   myCar.speedChase();
// }

// Interface ??
abstract class CakeRecipe{

  void putFlourInBettyCrocker();
  void putInOven();
  void preHeatOven();

}

class BakeCake implements CakeRecipe{

  @override
  void preHeatOven() {
    sleep(Duration(milliseconds: 1000));
    print('* Turning the oven on 200C°, fan mode *');
  }

  @override
  void putFlourInBettyCrocker() {
    sleep(Duration(milliseconds: 1000));
    print('* Pouring the pot of flower into the Betty Crocker mix *');
  }

  @override
  void putInOven() {
    sleep(Duration(milliseconds: 1000));
    print('* Puts the cake into the oven *');
  }


}

// Animal class

// abstract class Animals{
//
//   void makeSound();
//   void poop();
//   void sleep();
//
// }
//
// // some animal implements it
//
// class Dog implements Animals{
//
//   String name;
//   Dog(this.name);
//
//   @override
//   void makeSound() {
//     print('$name says woof woof');
//   }
//
//   @override
//   void poop() {
//     print('$name poops dog poop');
//   }
//
//   @override
//   void sleep() {
//     print('$name is sleeping');
//   }
//
//
// }
//
// // and another one maybe?
// class Bird implements Animals{
//
//   String name;
//   Bird(this.name);
//
//   @override
//   void makeSound() {
//     print('$name says tweet tweet');
//   }
//
//   @override
//   void poop() {
//     print('$name poops bird poop');
//   }
//
//   @override
//   void sleep() {
//     print('$name is sleeping');
//   }
//
//
// }
//
// // Gera einhvern abstract class og implementa hann i classa
// abstract class Car{
//   void speed();
//   void speedChase();
//   void modifications();
// }
//
// class BMW520d implements Car{
//   @override
//   void modifications() {
//     print('The BMW520d has tinted windows, mapped and a turbo');
//   }
//
//   @override
//   void speed() {
//     print('It is driving crazy speeds of 250km/h');
//   }
//
//   @override
//   void speedChase() {
//     print('The Police is not chasing it because it\'s on the autobahn');
//   }
//
// }

// Generics

// TYPES
// String, int, List, object, enum...
// Generic type <T>

// class UsersBox<T> {
//   List<T> users;
//
//   UsersBox(this.users);
// }
//
// void main(){
//   UsersBox<int> box = UsersBox([1,2]);
//   UsersBox<String> stringBox = UsersBox(['Hello', 'World']);
// }


// Vehicle Factory

// abstract class Vehicle{
//   void start();
//   void stop();
// }
//
// class Car implements Vehicle{
//   @override
//   void start() {
//     print('Car is starting...');
//   }
//
//   @override
//   void stop() {
//     print('Car is stopping...');
//   }
//
// }
//
// class Bicycle implements Vehicle{
//   @override
//   void start() {
//     print('Bicycle is starting...');
//   }
//
//   @override
//   void stop() {
//     print('Bicycle is stopping...');
//   }
//
// }
//
// class Truck implements Vehicle{
//   @override
//   void start() {
//     print('Truck is starting...');
//   }
//
//   @override
//   void stop() {
//     print('Truck is stopping...');
//   }
//
// }
//
// class Garage {
//
//   List vehicles = [];
//
//   void addVehicle(vehicle){
//     vehicles.add(vehicle);
//     print('$vehicle has been added to the garage');
//   }
//
//   void startAll(){
//     for(Vehicle vehicle in vehicles){
//       vehicle.start();
//     }
//   }
//
// }
//
// void main(){
//   // Create vehicles from their respective classes
//   Truck truck = Truck();
//   Car car = Car();
//   Bicycle bicycle = Bicycle();
//
//   // Create a garage to hold the vehicles
//   Garage myGarage = Garage();
//
//   // call vehicle methods
//   myGarage.addVehicle(truck);
//   myGarage.addVehicle(car);
//   myGarage.addVehicle(bicycle);
//
//   // Call the defined method that works for all vehicles in the garage
//   myGarage.startAll();
// }

class Product<T> {
  T name;
  Product(this.name);
}

class Inventory<T extends Product>{
  List<T> items = [];

  void addItem(T item){
    items.add(item);
  }

  void showItems(){
    print('----- INVENTORY -----');
    for(T item in items){
      print(item.name);
    }
    print('---------------------');
  }
}

void main(){
  Product shampoo = Product('Shampoo');

  Inventory myInventory = Inventory();
  myInventory.addItem(shampoo);
  myInventory.addItem(Product('Kiwi'));
  myInventory.addItem(Product('Apple'));
  myInventory.showItems();
}

// -- Summary --
// Generic hjálpar okkur að díla við típur sem við vitum ekki fyrirfram
// Interface | Implements hjálpar okkur að skipuleggja og skilgreina virkni
