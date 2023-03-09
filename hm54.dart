//Первый вариант использования значений по умолчанию.
//Лучше второй в файле hm55.dart

void main(List<String> args) {
  Car myCar = Car();
  myCar.start();

  Car myCar2 = Car.withColor("yellow");
  myCar2.start();
}

class Car {
  var brand = "Lada";
  var color = "black";

  Car() {
    // this.brand = "Lada";
    // this.color = "black";
  }

  Car.withColor(color) {
    // brand = "Lada";
    this.color = color;
  }

  void start() {
    print("The $color $brand has started.");
  }

  void stop() {
    print("The $color $brand has stopped.");
  }
}
