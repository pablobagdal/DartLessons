// Задача 1.

// Вы получите список строк. Ваша задача вернуть сумму длинны всех строк в списке.

// Пример: [“a”, “ab”, “abc”] => 1 + 2 + 3 = 6

// Условия:

// 1. Список может быть пустым, в этом случае возвращаем 0.

// Входные данные:

// [“a”, “ab”, “abc”]

// [“abcde”, “ab”, “abc”]

// []

// Выходные данные:

// [“a”, “ab”, “abc”] => 6

// [“abcde”, “ab”, “abc”] => 10

// [] => 0

import 'dart:svg';

void main() {
  var input_line1 = ["a", "ab", "abc"];
  var input_line2 = ["abcde", "ab", "abc"];
  var input_line3 = [];

  print(listValue(input_line1));
}

int listValue(List<String> list) {
  int count = 0;

  if (list == []) return 0;

  list.forEach((word) {
    count += word.length;
  });

  return count;
}
