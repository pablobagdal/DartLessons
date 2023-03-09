//error & exception

void main(List<String> args) {
  List list = [4, "jj", 54, true];

  // list.forEach(
  //   (element) => {printElementOfList(list, element)},
  // );
  printElementOfList(list, 1);
  printElementOfList(list, 2);
  printElementOfList(list, 555);
}

printElementOfList(List list, int index) {
  try {
    print(list[index]);
  } on RangeError {
    print("You should use index between 0 and ${list.length - 1}. Not $index");
  } catch (e) {
    print("Exception: $e");
  } finally {
    print("Function printElementOfList is over.\n");
  }
}
