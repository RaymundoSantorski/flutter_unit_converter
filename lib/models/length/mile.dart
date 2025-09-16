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
  const Mile(super.value);

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
        return Nanometer(value * (25400000 * 12 * 3 * 1760));
      case Micrometer:
        return Micrometer(value * (25400 * 12 * 3 * 1760));
      case Millimeter:
        return Millimeter(value * (254 * 12 * 3 * 1760 / 10));
      case Centimeter:
        return Centimeter(value * (1609344 / 10));
      case Inch:
        return Inch(value * 63360);
      case Feet:
        return Feet(value * 5280);
      case Yard:
        return Yard(value * 1760);
      case Meter:
        return Meter(value / (3937 / 100 / 12 / 3 / 1760));
      case Kilometer:
        return Kilometer(value / (39370 / 63360));
      default:
        return this;
    }
  }
}
