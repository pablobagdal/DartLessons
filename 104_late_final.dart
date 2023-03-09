/// Глобальная переменная int должна быть определена.
/// Но раз мы даём ей значение в теле main
/// а оно ожидается вне, то нужен late
late int globalVariable;

void main(List<String> args) {
  ///переменные с модификатором final должны быть определены однажды
  final int a;
  a = 4;
  //a = 23; - это сделать уже нельзя

  Lamp lamp = Lamp(30);
  globalVariable = 4;
}

class Lamp {
  late int brightness;
  late String color;
  final int price;

  Lamp(this.price) {
    brightness = 6000;
    color = "blue";
  }

  String info() {
    print("collecting the info...");
    return "The lamp. Brightness: $brightness, color: $color";
  }
}

class Lamp2 {
  late int brightness;
  late String color;
  late final int price;

  Lamp2() {
    brightness = 6000;
    color = "blue";
    price = 100;
  }

  String info() {
    print("collecting the info...");
    return "The lamp. Brightness: $brightness, color: $color";
  }
}
