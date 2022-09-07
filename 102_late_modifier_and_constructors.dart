/// существуют разные способы инициализации свойств класса
/// например, в теле класса
///

void main(List<String> args) {
  var pizza = Pizza();
  print(pizza.printPizza());

  var pizza1 = Pizza1();
  print(pizza1.printPizza());

  /// в таком случае нельзя вызвать конструктор без параметров, потому что
  /// таковой не задан
  var pizza2 = Pizza2(2, 20, "Margarita");
  print(pizza2.printPizza());

  // обязательно запрашивается недостающее свойство, иначе оно будет null, что не ожидается
  var pizza3 = Pizza3(5);
  print(pizza3.printPizza());
  // при желании можно дать значения уже определённым свойствам, которые при
  // этом обязательно заключены в фигурные скобки
  var pizza31 = Pizza3(5, name: "Italy");
  print(pizza31.printPizza());

  var pizza4 = Pizza4(4, 44, "tasty");
  print(pizza4.printPizza());

  var pizza5 = Pizza5();
  print(pizza5.printPizza());

  var pizza61 = Pizza6(4, 4, "nice");
  print(pizza61.printPizza());

  /// недостаток как и в предыдущих многих примерах: если параметры и обязательные
  /// они всё равно могут оказаться неподходящего типа, поэтому в конструкторе
  /// если допустимо, следует уточнять нужный тип данных. Параметры без скобок априори
  /// обязательные. Необязательные в квадратных. Именованные в фигурных. А являются ли
  /// именованные - обязательными?
  /// error
  // var pizza62 = Pizza6(null, null, "bad");
  // print(pizza62.printPizza());

  // error - следовательно именованные не обязательные
  // var pizza7 = Pizza7();
  // print(pizza7.printPizza());

  var pizza7 = Pizza7(id: 4, price: 12);
  print(pizza7.printPizza());

  /// price & name имеют модификатор required, поэтому они обязательные, но по-прежнему
  /// могут иметь значение null
  var pizza8 = Pizza8(4, price: 12, name: null);
  print(pizza8.printPizza());

  var pizza9 = Pizza9(id: 4, price: 12, name: "Goodypizza");
  print(pizza9.printPizza());
}

class Pizza {
  int id = 1;
  int price = 10;
  String name = "mister";

  Pizza() {}

  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}

class Pizza1 {
  int id;
  int price;
  String name;

  Pizza1()
      : id = 1,
        price = 10,
        name = "missis";

  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}

class Pizza2 {
  int id;
  int price;
  String name;

  Pizza2(this.id, this.price, this.name) {}

  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}

class Pizza3 {
  int id;
  int price;
  String name;

  Pizza3(this.id, {int this.price = 25, String this.name = "Greece"}) {}

  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}

class Pizza4 {
  /// alt+command+up/down чтобы писать одновременно в несколько строк
  late int id;
  late int price;
  late String name;

  Pizza4(id, price, name) {
    this.id = id;
    this.price = price;
    this.name = name;
  }

  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}

class Pizza5 {
  /// alt+command+up/down чтобы писать одновременно в несколько строк
  late int id;
  late int price;
  late String name;

  /// alt+up/down - перемещение выделенного текста по коду
  /// alt+shift+up/down - копирование выделенного текста вверх\вниз
  Pizza5() {
    this.id = 10;
    this.price = 10;
    this.name = "Usualiana";
  }

  /// command+a - выделить весь текст
  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}

class Pizza6 {
  /// alt+command+up/down чтобы писать одновременно в несколько строк
  late int id;
  late int price;
  late String name;

  /// alt+up/down - перемещение выделенного текста по коду
  /// alt+shift+up/down - копирование выделенного текста вверх\вниз
  Pizza6(id, price, name) {
    this.id = id;
    this.price = price;
    this.name = name;
  }

  /// command+a - выделить весь текст
  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}

class Pizza7 {
  late int id;
  late int price;
  late String name;

  Pizza7({id, price, name}) {
    this.id = id ?? 0;
    this.price = price ?? 10;
    this.name = name ?? "Sample";
  }

  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}

class Pizza8 {
  late int id;
  late int price;
  late String name;

  Pizza8(id, {required price, required name}) {
    this.id = id ?? 0;
    this.price = price ?? 10;
    this.name = name ?? "Sample";
  }

  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}

class Pizza9 {
  late int id;
  late int price;
  late String name;

  Pizza9({required int id, required int price, required String name}) {
    this.id = id;
    this.price = price;
    this.name = name;
  }

  String printPizza() {
    return "Pizza: $name, id: $id, price: $price\$";
  }
}
