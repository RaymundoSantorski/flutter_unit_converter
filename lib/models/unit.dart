abstract class Unit<T> {
  final double value;
  const Unit(this.value);

  String get unit;

  Type get type => T;
  T to(Type type);
}
