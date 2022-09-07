// Вика разрабатывает умную IDE и хочет перед вводом кода видеть первую букву самых часто используемых команд.
// Вика уже написала код, который хранит и обновляет список используемых команд. Помогите ей реализовать функцию поиска буквы, с которой чаще всего начинаются команды.

// Формат ввода
// Первая строка входных данных содержит целое число
// n
//  (
// 1
// ≤
// n
// ≤
// 1
// 0
// 0
// ) - количество команд. Далее следует
// n
//  строк, каждая из которых содержит строку
// s
// i
// (
// 1
// ≤
// |
// s
// i
// |
// ≤
// 1
// 0
// 0
// ), состоящую только из строчных латинских букв, где |
// s
// i
// | - длина строки |
// s
// i
// |.
// Формат вывода
// Выведите единственную букву - первую букву самых часто используемых команд.
// Если вариантов ответа несколько, выведите любой из них.

import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

int main(List<String> args) {
  String? line = stdin.readLineSync(encoding: utf8);

  int numberOfLines = int.parse(line!);

  Map<String, int> charsMap = {};

  String char;

  for (int index = 0; index < numberOfLines; index++) {
    char = stdin.readLineSync(encoding: utf8)![0];

    if (charsMap.keys.any((element) => element == char)) {
      charsMap.update(char, (value) => value + 1);
    } else {
      charsMap[char] = 1;
    }
  }

  int maxValue = 0;
  charsMap.forEach(
    (key, value) {
      if (value > maxValue) {
        maxValue = value;
      }
    },
  );

  var maxKey = charsMap.keys.firstWhere((k) => charsMap[k] == maxValue);

  print(maxKey);

  return 1;
}
