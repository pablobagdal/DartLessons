// Задача

// Вам дана строка «abc» и предполагая, что каждая буква в строке имеет значение, равное ее позиции в алфавите, то наша строка будет иметь значение 1 + 2 + 3 = 6. Это означает, что: a = 1, b = 2, c = 3 .... z = 26.

// Вам будет предоставлен список строк, и ваша задача будет вернуть значения строк, умноженные на позицию этой строки в списке. Позиция начинается с 1.

// Например: wordValue ["abc", "abc abc"] должно вернуть [6, 24] или [6 * 1, 12 * 2]. Обратите внимание, что пробелы игнорируются. «abc» имеет значение 6, а «abc abc» - значение 12. Теперь значение в позиции 1 умножается на 1, а значение в позиции 2 умножается на 2. Ввод будет содержать только строчные буквы и пробелы.

// Входные данные:

// Дан список строк - ["dart", "abc", "good luck"]

// Выходные данные:

// Вы должны получить список со значениями – [43, 12, 264]

const alphabet = [
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z',
];

void main() {
  var input_line = ["dart", "abc", "good luck"];
  var output_line = [];

  for (var i = 0; i < input_line.length; i++) {
    output_line.add(wordValue(input_line[i]) * (i + 1));
  }

  for (var i = 0; i < output_line.length; i++) {
    print("${input_line[i]} - ${output_line[i]}");
  }
}

int numberOfLetter(letter) => alphabet.indexOf(letter) + 1;

int wordValue(String word) {
  int count = 0;
  for (int i = 0; i < word.length; i++) {
    count += numberOfLetter(word[i]);
  }
  return count;
}
