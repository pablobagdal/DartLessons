/*
Вам будет дан год, верните тот век, в котором он находится. 
Первый век охватывает период с 1 года до 100 года включительно, 
второй - с 101 года до 200 года включительно и т. д.
Входные данные:
1705
1900
1601
2000
Выходные данные:
18
19
17
20
*/
void main() {
  final numbers = [1705, 1900, 1601, 2000];
  var numberAges = [];

  numbers.forEach((number) {
    var age = number / 100;
    age += age % 100 == 0 ? 0 : 1;

    numberAges.add(age);
  });

  numberAges.forEach((element) {
    print("$element ");
  });
}
