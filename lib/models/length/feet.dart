import 'package:flutter_unit_converter/models/length/centimeter.dart';
import 'package:flutter_unit_converter/models/length/inch.dart';
import 'package:flutter_unit_converter/models/length/kilometer.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/meter.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/mile.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';
import 'package:flutter_unit_converter/models/length/nanometer.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';

class Feet extends Length {
  const Feet(super.value);

  /// return the abreviation of the unit to be shown in the selectors
  @override
  String get unit => 'ft';

  /// returns the type of the object, we use it in the converter logic as
  /// we declare Length objects that can be of different types
  @override
  Type get type => Feet;

  /// convert from inch object to the specified object
  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer(value * (25400000 * 12));
      case Micrometer:
        return Micrometer(value * (25400 * 12));
      case Millimeter:
        return Millimeter(value * (254 * 12 / 10));
      case Centimeter:
        return Centimeter(value * (3048 / 100));
      case Inch:
        return Inch(value * 12);
      case Yard:
        return Yard(value / 3);
      case Mile:
        return Mile(value / 5280);
      case Meter:
        return Meter(value / (3937 / 100 / 12));
      case Kilometer:
        return Kilometer(value / (39370 / 12));
      default:
        return this;
    }
  }
}
