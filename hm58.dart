class Vehicle {
  late String color;

  Vehicle.withColor(String color) {
    this.color = color;
  }

  // Vehicle() {
  //   this.color = "gray";
  // }

  void start() => print("the $color vehicle started");
}

class Car extends Vehicle {
  late String brand = "LADA";

  Car.withColor(String brand, [String color = "gray"])
      : super.withColor(color) {
    this.brand = brand;
  }

  void start() => print("the $color car started");
}

void main(List<String> args) {
  Vehicle myVehicle = Vehicle.withColor("black");
  myVehicle.start();

  Car myCar = Car.withColor("Niga", "black"); // = Car.withColor("red");
  myCar.start();
}
