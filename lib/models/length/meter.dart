import 'package:flutter_unit_converter/models/length/centimeter.dart';
import 'package:flutter_unit_converter/models/length/feet.dart';
import 'package:flutter_unit_converter/models/length/inch.dart';
import 'package:flutter_unit_converter/models/length/kilometer.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/mile.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';
import 'package:flutter_unit_converter/models/length/nanometer.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';

/// class Meter with methods to convert from other length classes
class Meter extends Length {
  /// Constructor of the class, asigns the value
  const Meter(super.value);

  @override
  String get unit => 'm';

  @override
  Type get type => Meter;

  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer(value * (1000 * 1000 * 10 * 100));
      case Micrometer:
        return Micrometer(value * 1000000);
      case Millimeter:
        return Millimeter(value * (10 * 100));
      case Centimeter:
        return Centimeter(value * 100);
      case Inch:
        return Inch(value / (254 / 10000));
      case Feet:
        return Feet(value / (3048 / 10000));
      case Yard:
        return Yard(value / (9144 / 100 / 100));
      case Mile:
        return Mile(value / (1609344 / 10 / 100));
      case Kilometer:
        return Kilometer(value / 1000);
      default:
        return this;
    }
  }
}
