import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';

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
