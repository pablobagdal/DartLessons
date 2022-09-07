void main(List<String> args) {
  // ok
  int a;
  a = 4;
  print(a);

  // ok
  int? b;
  b ??= 4;
  print(b);

  print(someValue(44));
  print(someValue(null));
  print(absoluteValue(55));
  print(absoluteValue(null));

  /// Null-aware operators:
  /// 1. if-null оператор
  /// 2. ??= оператор присваивания
  /// 3. ?. оператор доступа
  /// 4. ! оператор утверждения
  /// 5. as оператор преобразования типов

  // преобразование типов с помощью оператора as:
  num? value1 = 10;
  num value2 = value1 as int;
}

int someValue(int? value) {
  return value ?? 0;
}

int? absoluteValue(int? value) {
  /// ?. - оператор доступа. В случае, если value == null, функция abs не будет вызвана
  /// для решения проблемы можно также использовать оператор !., который будет означать,
  /// что value точно non-nullable
  return value?.abs();
}
