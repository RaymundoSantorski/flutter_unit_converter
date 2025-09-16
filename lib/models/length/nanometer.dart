import 'package:flutter_unit_converter/models/length/centimeter.dart';
import 'package:flutter_unit_converter/models/length/feet.dart';
import 'package:flutter_unit_converter/models/length/inch.dart';
import 'package:flutter_unit_converter/models/length/kilometer.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/meter.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/mile.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';

/// class Centimeter with methods to convert from other length classes
class Nanometer extends Length {
  /// Constructor of the class, asigns the value
  const Nanometer(super.value);

  @override
  String get unit => 'nm';

  @override
  Type get type => Nanometer;

  @override
  Length to(Type type) {
    switch (type) {
      case Micrometer:
        return Micrometer(value / 1000);
      case Millimeter:
        return Millimeter(value / (1000 * 1000));
      case Centimeter:
        return Centimeter(value / 10000000);
      case Inch:
        return Inch(value / 25400000);
      case Feet:
        return Feet(value / 304800000);
      case Yard:
        return Yard(value / (9144 * 100 * 1000));
      case Mile:
        return Mile(value / (1609344 * 1000 * 1000));
      case Meter:
        return Meter(value / 1000000000);
      case Kilometer:
        return Kilometer(value / 1000000000000);
      default:
        return this;
    }
  }
}
