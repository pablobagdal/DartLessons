class Path {
  void moveTo(int x, int y) {}
  void lineTo(int x, int y) {}
}

void main(List<String> args) {
  Path path = Path();

  // вместо этого
  // path.moveTo(0, 0);
  // path.lineTo(0, 2);
  // path.moveTo(2, 2);

  // делаем каскад
  path
    ..moveTo(0, 0)
    ..lineTo(0, 2)
    ..moveTo(2, 2);

  /// но если бы path был nullable (Path? path = Path();)
  /// то тогда данный оператор уже не сработал бы и пришлось использовать ?..
  /// по факту же он будет работать, но сломается в случае, если path1 примет
  /// значение null
  Path? path1 = Path();
  path1
    ..moveTo(0, 0)
    ..lineTo(0, 2)
    ..moveTo(2, 2);

  // // The method 'moveTo' can't be unconditionally invoked because the receiver can be 'null'.
  // Path? path2 = null;
  // path2
  //   ..moveTo(0, 0)
  //   ..lineTo(0, 2)
  //   ..moveTo(2, 2);

  // вот так норм
  Path? path3 = null;
  path3
    ?..moveTo(0, 0)
    ..lineTo(0, 2)
    ..moveTo(2, 2);
}
