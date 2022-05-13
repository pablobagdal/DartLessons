//error & exception

void main(List<String> args) {
  List aa = [4, "jj", 54, true];

  printElementOfList(aa, 1);
  printElementOfList(aa, 2);
  printElementOfList(aa, 555);
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
