// Задача 2.

// Вы получите список чисел. Ваша задача вернуть сумму всех положительных чисел.

// Пример: [1, -10, 9, -1] => 1 + 9 = 10

// Условия:

// 1. Список может быть пустым, в этом случае возвращаем 0.

// 2. Если в списке все отрицательные значения, то вернуть 0.

// Входные данные:

// [1, -10, 9, -1]

// [-1, -2, -3]

// []

// [1, 2]

// Выходные данные

// [1, -10, 9, -1] => 10

// [-1, -2, -3] => 0

// [] => 0

// [1, 2] => 3

void main() {
  List input_line1 = [1, -10, 9, -1];
  List input_line2 = [-1, -2, -3];
  List input_line3 = [];
  List input_line4 = [1, 2];

  print(SummaryPositivesFromList(input_line1));
  print(SummaryPositivesFromList(input_line2));
  print(SummaryPositivesFromList(input_line3));
  print(SummaryPositivesFromList(input_line4));
}

SummaryPositivesFromList(List list) {
  if (list == []) return 0;

  num sum = 0;

  list.forEach((element) {
    if (element > 0) sum += element;
  });
  return sum;
}
