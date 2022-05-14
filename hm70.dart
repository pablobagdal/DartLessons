// Задача.

// Определите следующие классы.

// 1) Кубоид

// Конструктор объекта для класса Cuboid должен получить ровно три аргумента в следующем порядке: длина, ширина, высота и сохранить эти три значения в length, width и height соответственно.

// Класс Cuboid должен иметь геттер SurfaceArea, который возвращает площадь поверхности кубоида, и геттер Volume, который возвращает объем кубоида.

// 2) Куб

// Класс Cube является подклассом класса Cuboid. Функция конструктора Cube должна получить только один аргумент, его длину (length) и использовать это переданное значение, чтобы установить length, width и height.

// Подсказка: используйте super, чтобы передать правильные параметры.

// Входные данные:

// Cuboid(1, 2, 3)

// Cube(2)

// Выходные данные:

// Cuboid Volume = 6

// Cuboid Surface Area = 22

// Cube Volume = 8

// Cube Surface Area = 24

void main(List<String> args) {
  Cuboid cuboid = Cuboid(1, 2, 3);
  print("class: ${cuboid.runtimeType}");
  print("Surface area: ${cuboid.SurfaceArea()}");
  print("Volume: ${cuboid.Volume()}");

  Cube cube = Cube(2);
  print("class: ${cube.runtimeType}");
  print("Surface area: ${cube.SurfaceArea()}");
  print("Volume: ${cube.Volume()}");
}

class Cuboid {
  var length, width, height;

  Cuboid(this.length, this.width, this.height);

  SurfaceArea() =>
      length * width * 2 + length * height * 2 + width * height * 2;
  Volume() => length * width * height;
}

class Cube extends Cuboid {
  Cube(length) : super(length, length, length);
}
