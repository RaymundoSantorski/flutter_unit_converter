import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/feet.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/mile.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

/// class Centimeter with methods to convert from other length classes
class Yard extends Length {
  /// Constructor of the class, asigns the value
  Yard(super.value);

  /// returns an Inch object from another type object and do the unit convertion
  @override
  factory Yard.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Nanometer:
        val = val / (9144 * 100 * 1000);
        break;
      case Micrometer:
        val = val / (9144 * 100);
        break;
      case Millimeter:
        val = val / (9144 / 10);
        break;
      case Centimeter:
        val = val / (9144 / 10 / 10);
        break;
      case Inch:
        val = val / (3 * 12);
        break;
      case Feet:
        val = val / 3;
        break;
      case Mile:
        val = val * 1760;
        break;
      case Meter:
        val = val / (9144 / 100 / 100);
        break;
      case Kilometer:
        val = val / (9144 / 100 / 100 / 1000);
    }
    return Yard(val);
  }

  /// return the abreviation of the unit to be shown in the selectors
  @override
  String get unit => 'yd';

  /// returns the type of the object, we use it in the converter logic as
  /// we declare Length objects that can be of different types
  @override
  Type get type => Yard;

  /// convert from inch object to the specified object
  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer.from(this);
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
