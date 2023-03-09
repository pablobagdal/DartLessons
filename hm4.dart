/*
Вам будет дан список (list) и значение (value). Все, что вам нужно сделать, это проверить, содержит ли предоставленный список данное значение.
Список может содержать числа или строки. Value должно возвращать true, если список содержит значение, и false, если нет. Запрещено использовать indexOf.
Входные данные:
Список = [60, 999, 14, "dart1", 45, 95, "dart", 1]
Значение = “dart”
Значение = 15;
Выходные данные:
true
false
*/

bool isExist(value, list) {
  for (var element in list) {
    if (element == value) return true;
  }
  return false;
}

void main() {
  List list = [60, 999, 14, "dart1", 45, 95, "dart", 1];
  var value1 = "dart";
  var value2 = 15;

  print(isExist(value1, list));
  print(isExist(value2, list));
}
