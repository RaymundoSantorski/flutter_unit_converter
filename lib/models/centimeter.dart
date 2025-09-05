import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';

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
        return Kilometer.from(this);
      default:
        return this;
    }
  }
}
