import 'package:flutter_unit_converter/models/length/centimeter.dart';
import 'package:flutter_unit_converter/models/length/feet.dart';
import 'package:flutter_unit_converter/models/length/inch.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/meter.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/mile.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';
import 'package:flutter_unit_converter/models/length/nanometer.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';

class Kilometer extends Length {
  const Kilometer(super.value);

  @override
  String get unit => 'km';

  @override
  Type get type => Kilometer;

  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer(value * (1000 * 1000 * 10 * 100 * 1000));
      case Micrometer:
        return Micrometer(value * 1000000000);
      case Millimeter:
        return Millimeter(value * (10 * 100 * 1000));
      case Centimeter:
        return Centimeter(value * 100000);
      case Inch:
        return Inch(value / (254 / 10000000));
      case Feet:
        return Feet(value / (3048 / 10000000));
      case Yard:
        return Yard(value / (9144 / 100 / 100 / 1000));
      case Mile:
        return Mile(value / (1609344 / 1000 / 1000));
      case Meter:
        return Meter(value * 1000);
      default:
        return this;
    }
  }
}
