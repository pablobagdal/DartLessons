//Второй вариант использования значений по умолчанию

void main(List<String> args) {
  Car myCar = Car();
  myCar.start();

  Car myCar2 = Car.withColor("yellow");
  myCar2.start();

  Car myCar3 = Car.named("Chevy", "yellow");
  myCar3.start();
}

class Car {
  var brand;
  var color;

  Car(this.brand, this.color);

  Car.withColor(color) : this("Lada");

  Car.named() : this("Lada", "black");

  void start() {
    print("The $color $brand has started.");
  }

  void stop() {
    print("The $color $brand has stopped.");
  }
}
