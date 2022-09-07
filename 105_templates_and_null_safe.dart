class Robot<T> {
  T name;
  Robot({required this.name});
}

void main(List<String> args) {
  Robot<int> droid1 = Robot(name: 1101);
  Robot<String> droid2 = Robot(name: "R2-d2");
}
