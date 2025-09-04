abstract class Length {
  double value;
  Length(this.value);

  factory Length.from(Type type, double value) {
    if (type is Centimeter) {
      return Centimeter(value);
    } else if (type is Meter) {
      return Meter(value);
    }
    return Millimeter(value);
  }
}

/// class Millimeter with methods to convert from other length classes
class Millimeter extends Length {
  /// Constructor of the class, asigns the value
  Millimeter(super.value);

  /// returns a Millimeter from a Length object
  @override
  factory Millimeter.from(Length len) {
    if (len is Centimeter) {
      return Millimeter(len.value * 10);
    } else if (len is Meter) {
      return Millimeter(len.value * 1000);
    }
    return Millimeter(len.value);
  }
}

/// class Centimeter with methods to convert from other length classes
class Centimeter extends Length {
  /// Constructor of the class, asigns the value
  Centimeter(super.value);

  /// returns a Centimeter a Length object
  @override
  factory Centimeter.from(Length len) {
    if (len is Millimeter) {
      return Centimeter(len.value / 10);
    } else if (len is Meter) {
      return Centimeter(len.value * 100);
    }
    return Centimeter(len.value);
  }
}

/// class Meter with methods to convert from other length classes
class Meter extends Length {
  /// Constructor of the class, asigns the value
  Meter(super.value);

  /// returns a Meter from a Length object
  @override
  factory Meter.from(Length len) {
    if (len is Millimeter) {
      return Meter(len.value / 1000);
    } else if (len is Centimeter) {
      return Meter(len.value / 100);
    }
    return Meter(len.value);
  }
}
