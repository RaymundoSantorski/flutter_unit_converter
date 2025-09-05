import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

/// class Centimeter with methods to convert from other length classes
class Micrometer extends Length {
  /// Constructor of the class, asigns the value
  Micrometer(super.value);

  /// returns a Centimeter a Length object
  @override
  factory Micrometer.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Nanometer:
        val = val / 1000;
        break;
      case Millimeter:
        val = val * 1000;
        break;
      case Centimeter:
        val = val * 100000;
        break;
      case Meter:
        val = val * 10000000;
        break;
      case Kilometer:
        val = val * 10000000000;
    }
    return Micrometer(val);
  }

  @override
  String get unit => 'Mm';

  @override
  Type get type => Micrometer;

  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer.from(this);
      case Millimeter:
        return Millimeter.from(this);
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
