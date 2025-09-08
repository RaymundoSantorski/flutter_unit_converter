import 'package:flutter_unit_converter/models/feet.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/mile.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';
import 'package:flutter_unit_converter/models/yard.dart';

/// class Centimeter with methods to convert from other length classes
class Centimeter extends Length {
  /// Constructor of the class, asigns the value
  Centimeter(super.value);

  /// returns a Centimeter a Length object
  @override
  factory Centimeter.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Nanometer:
        val = val / 10000000;
        break;
      case Micrometer:
        val = val / 10000;
        break;
      case Millimeter:
        val = val / 10;
        break;
      case Inch:
        val = val * (254 / 100);
        break;
      case Feet:
        val = val * (3048 / 100);
        break;
      case Yard:
        val = val * (9144 / 100);
        break;
      case Mile:
        val = val * (1609344 / 10);
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
      case Nanometer:
        return Nanometer.from(this);
      case Micrometer:
        return Micrometer.from(this);
      case Millimeter:
        return Millimeter.from(this);
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
