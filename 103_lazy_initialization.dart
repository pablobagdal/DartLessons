class Lamp {
  late int brightness;
  late String color;

  Lamp() {
    brightness = 6000;
    color = "blue";
    print("conctructor.");
  }

  String info() {
    print("collecting the info...");
    return "The lamp. Brightness: $brightness, color: $color";
  }
}

void main(List<String> args) {
  /// Ленивая инициализация заключается в следующем
  ///
  /// Вариант 1. Обычная инициализация и вызов метода
  Lamp lamp = Lamp();
  print(lamp.info());

  /// Вариант 2. Это не статическая функция. Мы просто вызвали её сразу
  /// же после конструктора. Таким образом, в переменную lamp1 поместили результат
  /// выполнения метода объекта, но не сам объект.
  /// Значит, сам объект нам вовсе не нужен. Как и вывод текста внутри метода.
  /// Но всё выводится и занимает как ресурсы, так и время.
  var lamp1 = Lamp().info();
  // print(lamp1);

  /// Вариант 3. Объявляем ленивую инициализацию. Это значит, что объект
  /// не создастся, пока не потребуется. В переменной лежит конструкция,
  /// ожидающая своего момента, но она ещё не выполнена, не занимает память и т.п.
  /// соответственно вывод текста из метода игнорируется.
  /// Нет, я ошибся. Ничего не игнорируется. Но метод выполнится ровно тогда, когда
  /// произойдёт его вызов в коде. То есть вызов lamp2.
  late var lamp2 = Lamp().info();
  // print(lamp2);
}
