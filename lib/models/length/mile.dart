import 'package:flutter_unit_converter/models/length/centimeter.dart';
import 'package:flutter_unit_converter/models/length/feet.dart';
import 'package:flutter_unit_converter/models/length/inch.dart';
import 'package:flutter_unit_converter/models/length/kilometer.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/meter.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';
import 'package:flutter_unit_converter/models/length/nanometer.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';

/// class Centimeter with methods to convert from other length classes
class Mile extends Length {
  /// Constructor of the class, asigns the value
  Mile(super.value);

  /// returns an Inch object from another type object and do the unit convertion
  @override
  factory Mile.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Nanometer:
        val = val / (1609344 * 1000 * 1000);
        break;
      case Micrometer:
        val = val / (1609344 * 1000);
        break;
      case Millimeter:
        val = val / 1609344;
        break;
      case Centimeter:
        val = val / (1609344 / 10);
        break;
      case Inch:
        val = val / 63360;
        break;
      case Feet:
        val = val / 5280;
        break;
      case Yard:
        val = val / 1760;
        break;
      case Meter:
        val = val / (1609344 / 10 / 100);
        break;
      case Kilometer:
        val = val / (1609344 / 1000 / 1000);
    }
    return Mile(val);
  }

  /// return the abreviation of the unit to be shown in the selectors
  @override
  String get unit => 'mi';

  /// returns the type of the object, we use it in the converter logic as
  /// we declare Length objects that can be of different types
  @override
  Type get type => Mile;

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
      case Yard:
        return Yard.from(this);
      case Meter:
        return Meter.from(this);
      case Kilometer:
        return Kilometer.from(this);
      default:
        return this;
    }
  }
}
