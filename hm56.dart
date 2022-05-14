void main() {
  var myCar = Car(carName: "BMW", per: 23.4);
  myCar.infoCar();

  var myCar1 = Car(carName: "Lada", per: 13);
  myCar1.infoCar();
}

class Car {
  String carName;
  double percentWay;

  Car({required String carName, required double per})
      : carName =
            carName, //this не требуется. Можно давать переменной название, аналогичное названию свойства класса, но можно запутаться
        percentWay = per.roundToDouble() {
    print("Other Work");
    // percentWay = 100;
  }

  void infoCar() {
    print("The $carName drove $percentWay of the way.");
  }
}
