/// class Millimeter with methods to convert from other length classes
class Millimeter {
  late double value;

  /// Constructor of the class, asigns the value
  Millimeter(this.value);

  /// returns a Millimeter from a Centimeter object
  factory Millimeter.fromCentimeter(Centimeter c) => Millimeter(c.value * 10);

  /// returns a Millimeter from a Meter object
  factory Millimeter.fromMeter(Meter m) => Millimeter(m.value * 1000);
}

/// class Centimeter with methods to convert from other length classes
class Centimeter {
  late double value;

  /// Constructor of the class, asigns the value
  Centimeter(this.value);

  /// returns a Centimeter from a Millimeter object
  factory Centimeter.fromMillimeter(Millimeter m) => Centimeter(m.value / 10);

  /// returns a Centimeter from a Meter object
  factory Centimeter.fromMeter(Meter m) => Centimeter(m.value * 100);
}

/// class Meter with methods to convert from other length classes
class Meter {
  late double value;

  /// Constructor of the class, asigns the value
  Meter(this.value);

  /// returns a Meter from a Millimeter object
  factory Meter.fromMillimeter(Millimeter m) => Meter(m.value / 1000);

  /// returns a Meter from a Centimeter object
  factory Meter.fromCentimeter(Centimeter m) => Meter(m.value / 100);
}

enum LengthModels { mm, cm, m }
