import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/feet.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/mile.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/yard.dart';

/// class Centimeter with methods to convert from other length classes
class Nanometer extends Length {
  /// Constructor of the class, asigns the value
  Nanometer(super.value);

  /// returns a Centimeter a Length object
  @override
  factory Nanometer.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Micrometer:
        val = val * 1000;
        break;
      case Millimeter:
        val = val * (1000 * 1000);
        break;
      case Centimeter:
        val = val * (1000 * 1000 * 10);
        break;
      case Inch:
        val = val * 25400000;
        break;
      case Feet:
        val = val * (25400000 * 12);
        break;
      case Yard:
        val = val * (25400000 * 12 * 3);
        break;
      case Mile:
        val = val * (25400000 * 12 * 3 * 1760);
        break;
      case Meter:
        val = val * (1000 * 1000 * 10 * 100);
        break;
      case Kilometer:
        val = val * (1000 * 1000 * 10 * 100 * 1000);
    }
    return Nanometer(val);
  }

  @override
  String get unit => 'nm';

  @override
  Type get type => Nanometer;

  @override
  Length to(Type type) {
    switch (type) {
      case Micrometer:
        return Micrometer.from(this);
      case Millimeter:
        return Millimeter.from(this);
      case Centimeter:
        return Centimeter.from(this);
      case Inch:
        return Inch.from(this);
      case Feet:
        return Feet.from(this);
      case Yard:
        return Yard.from(this);
      case Mile:
        return Mile.from(this);
      case Meter:
        return Meter.from(this);
      case Kilometer:
        return Kilometer.from(this);
      default:
        return this;
    }
  }
}
