class Vehicle {
  var color;

  Vehicle.withColor(color) {
    this.color = color;
  }

  // Vehicle() {
  //   this.color = "gray";
  // }

  void start() => print("the $color vehicle started");
}

class Car extends Vehicle {
  String brand;

  Car(String brand, String color) : super.withColor(color) {
    this.brand = "BMW";
  }

  void start() => print("the $color car started");
}

void main(List<String> args) {
  Vehicle myVehicle = Vehicle.withColor("black");
  myVehicle.start();

  Car myCar = Car.from();
  myCar.start();
}
