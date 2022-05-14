import 'hm54.dart';

void main(List<String> args) {
  Car myCar = Car();
  myCar.info();
}

class Vehicle {
  String color;

  Vehicle() : this.color = "Black";

  void info() {
    print("class: Vehicle");
    print("color: $color");
  }
}

class Car extends Vehicle {
  String brand = "Lada";
  String color;

  Car()
      : this.brand = "BMW",
        this.color = "5" {}

  // @override
  void info() {
    // super.info();
    print("class: Car");
    print("color: ${super.color}");
    print("brand: $brand");
    print("fake color(int): $color");
  }
}
