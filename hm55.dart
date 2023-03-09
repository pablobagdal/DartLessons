// //Второй вариант использования значений по умолчанию

void main(List<String> args) {
  // Car myCar = Car();
  // myCar.start();

  Car myCar2 = Car.withColor("yellow");
  myCar2.start();

  Car myCar3 = Car.named("Chevy");
  myCar3.start();
}

class Car {
  var brand;
  var color;

  Car(this.brand, this.color);

  Car.withColor(color) : this("Lada", color);

  Car.named(brand) : this(brand, "black");

  void start() {
    print("The $color $brand has started.");
  }

  void stop() {
    print("The $color $brand has stopped.");
  }
}
