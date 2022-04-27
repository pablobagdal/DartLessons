/*
Определите количество десятичных цифр в целом числе без знака.
Например, 7 представляет собой одну цифру, 33 имеет 2 цифры, а 129955 имеет 6 цифр.
Условие: использовать length нельзя.
Входные данные:
2
555
236455
Выходные данные:
1
3
6
*/
void main() {
  final numbers = [2, 555, 236455];
  var numberLengths = [];

  for (int i = 0; i < numbers.length; i++) {
    var cuttedNumber = numbers[i] / 10;
    var count = 1;

    while (cuttedNumber >= 1) {
      count++;
      cuttedNumber /= 10;
    }

    numberLengths.add(count);
  }

  numberLengths.forEach((element) {
    print("$element ");
  });
}
