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
  const Millimeter(super.value);

  @override
  String get unit => 'mm';

  @override
  Type get type => Millimeter;

  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer(value * (1000 * 1000));
      case Micrometer:
        return Micrometer(value * 1000);
      case Centimeter:
        return Centimeter(value / 10);
      case Inch:
        return Inch(value / (254 / 10));
      case Feet:
        return Feet(value / (3048 / 10));
      case Yard:
        return Yard(value / (9144 / 10));
      case Mile:
        return Mile(value / 1609344);
      case Meter:
        return Meter(value / 1000);
      case Kilometer:
        return Kilometer(value / 1000000);
      default:
        return this;
    }
  }
}
