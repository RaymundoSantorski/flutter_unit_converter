import 'package:flutter_unit_converter/models/length/centimeter.dart';
import 'package:flutter_unit_converter/models/length/feet.dart';
import 'package:flutter_unit_converter/models/length/inch.dart';
import 'package:flutter_unit_converter/models/length/kilometer.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/meter.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/mile.dart';
import 'package:flutter_unit_converter/models/length/nanometer.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';

/// class Millimeter with methods to convert from other length classes
class Millimeter extends Length {
  /// Constructor of the class, asigns the value
  Millimeter(super.value);

  /// returns a Millimeter from a Length object
  @override
  factory Millimeter.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Nanometer:
        val = val / (1000 * 1000);
        break;
      case Micrometer:
        val = val / 1000;
        break;
      case Centimeter:
        val = val * 10;
        break;
      case Inch:
        val = val * (254 / 10);
        break;
      case Feet:
        val = val * (254 * 12 / 10);
        break;
      case Yard:
        val = val * (254 * 12 * 3 / 10);
        break;
      case Mile:
        val = val * (254 * 12 * 3 * 1760 / 10);
        break;
      case Meter:
        val = val * (10 * 100);
        break;
      case Kilometer:
        val = val * (10 * 100 * 1000);
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
      case Nanometer:
        return Nanometer.from(this);
      case Micrometer:
        return Micrometer.from(this);
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
