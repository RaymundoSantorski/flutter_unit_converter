List<Length> units = [Millimeter(0), Centimeter(0), Meter(0), Kilometer(0)];

abstract class Length {
  double value;
  Length(this.value);

  factory Length.from(Type type, double value) {
    switch (type) {
      case Centimeter:
        return Centimeter(value);
      case Meter:
        return Meter(value);
      case Kilometer:
        return Kilometer(value);
    }
    return Millimeter(value);
  }

  String get unit => '';

  Type get type => Length;

  Length to(Type type) => this;
}

/// class Millimeter with methods to convert from other length classes
class Millimeter extends Length {
  /// Constructor of the class, asigns the value
  Millimeter(super.value);

  /// returns a Millimeter from a Length object
  @override
  factory Millimeter.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Centimeter:
        val = val * 10;
        break;
      case Meter:
        val = val * 100;
        break;
      case Kilometer:
        val = val * 1000000;
    }
    return Millimeter(val);
  }

  @override
  String get unit => 'mm';

  @override
  Type get type => Millimeter;

  @override
  Length to(Type type) {
    switch (type) {
      case Centimeter:
        return Centimeter.from(this);
      case Meter:
        return Meter.from(this);
      case Kilometer:
        return Kilometer.from(this);
      default:
        return this;
    }
  }
}

/// class Centimeter with methods to convert from other length classes
class Centimeter extends Length {
  /// Constructor of the class, asigns the value
  Centimeter(super.value);

  /// returns a Centimeter a Length object
  @override
  factory Centimeter.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Millimeter:
        val = val / 10;
        break;
      case Meter:
        val = val * 100;
        break;
      case Kilometer:
        val = val * 100000;
    }
    return Centimeter(val);
  }

  @override
  String get unit => 'cm';

  @override
  Type get type => Centimeter;

  @override
  Length to(Type type) {
    switch (type) {
      case Millimeter:
        return Millimeter.from(this);
      case Meter:
        return Meter.from(this);
      case Kilometer:
        return Centimeter.from(this);
      default:
        return this;
    }
  }
}

/// class Meter with methods to convert from other length classes
class Meter extends Length {
  /// Constructor of the class, asigns the value
  Meter(super.value);

  /// returns a Meter from a Length object
  @override
  factory Meter.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Millimeter:
        val = val / 1000;
        break;
      case Centimeter:
        val = val / 100;
        break;
      case Kilometer:
        val = val * 1000;
    }

    return Meter(val);
  }

  @override
  String get unit => 'm';

  @override
  Type get type => Meter;

  @override
  Length to(Type type) {
    switch (type) {
      case Millimeter:
        return Millimeter.from(this);
      case Centimeter:
        return Centimeter.from(this);
      case Kilometer:
        return Kilometer.from(this);
      default:
        return this;
    }
  }
}

class Kilometer extends Length {
  Kilometer(super.value);

  @override
  factory Kilometer.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Millimeter:
        val = val / 1000000;
        break;
      case Centimeter:
        val = val / 100000;
        break;
      case Meter:
        val = val / 1000;
    }

    return Kilometer(val);
  }

  @override
  String get unit => 'km';

  @override
  Type get type => Kilometer;

  @override
  Length to(Type type) {
    switch (type) {
      case Millimeter:
        return Millimeter.from(this);
      case Centimeter:
        return Centimeter.from(this);
      case Meter:
        return Meter.from(this);
      default:
        return this;
    }
  }
}
