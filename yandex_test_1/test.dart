import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'dart:math';

void main() async {
  final file = File('file.txt');
  Stream<String> lines = file
      .openRead()
      .transform(utf8.decoder) // Decode bytes to UTF-8.
      .transform(LineSplitter()); // Convert stream to individual lines.

  // any possible size
  List<int> allSizes = [];
  // max of width, height, length of each item
  List<int> itemMaxSizes = [];

  try {
    await for (var line in lines) {
      var wordsInLine = line.split(' ');

      wordsInLine.removeAt(0);

      // WHL - width height lenght
      List<int> dimensions = wordsInLine
          .map(
            (e) => int.parse(e),
          )
          .toList();

      // select all distinct values to the list
      dimensions.forEach(
        (element) {
          bool found = allSizes.contains(element);

          if (!found) {
            allSizes.add(element);
          }
        },
      );

      // selecting max value of 3 available
      var maxOfLine = dimensions.reduce(max);

      itemMaxSizes.add(maxOfLine);
    }
    // print('File is now closed.');
  } catch (e) {
    print('Error: $e');
  }

  // .. is 'cause sort() doesn't return new value so to change ours we use it
  allSizes..sort();
  itemMaxSizes..sort();

  print(allSizes);
  print(itemMaxSizes);

  // at least this amount should be putted into the boxes
  int itemsCountToInclude = itemMaxSizes.length.isEven
      ? itemMaxSizes.length ~/ 2
      : itemMaxSizes.length ~/ 2 + 1;
  // print(itemsCountToInclude);

  int result = allSizes.firstWhere(
    (element) {
      return element >= itemMaxSizes[itemsCountToInclude - 1];
    },
  );

  print("Необходимый размер ящика: ${result}x${result}x${result}");
}
