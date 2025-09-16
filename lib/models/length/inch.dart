import 'package:flutter_unit_converter/models/length/centimeter.dart';
import 'package:flutter_unit_converter/models/length/feet.dart';
import 'package:flutter_unit_converter/models/length/kilometer.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/meter.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/mile.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';
import 'package:flutter_unit_converter/models/length/nanometer.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';

/// class Centimeter with methods to convert from other length classes
class Inch extends Length {
  /// Constructor of the class, asigns the value
  const Inch(super.value);

  /// return the abreviation of the unit to be shown in the selectors
  @override
  String get unit => 'in';

  /// returns the type of the object, we use it in the converter logic as
  /// we declare Length objects that can be of different types
  @override
  Type get type => Inch;

  /// convert from inch object to the specified object
  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer(value * 25400000);
      case Micrometer:
        return Micrometer(value * 25400);
      case Millimeter:
        return Millimeter(value * (254 / 10));
      case Centimeter:
        return Centimeter(value * (254 / 100));
      case Feet:
        return Feet(value / 12);
      case Yard:
        return Yard(value / (3 * 12));
      case Mile:
        return Mile(value / 63360);
      case Meter:
        return Meter(value / (3937 / 100));
      case Kilometer:
        return Kilometer(value / 39370);
      default:
        return this;
    }
  }
}
