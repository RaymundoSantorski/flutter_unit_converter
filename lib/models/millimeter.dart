import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/meter.dart';

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
