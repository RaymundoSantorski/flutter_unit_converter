import 'package:flutter_unit_converter/models/length/feet.dart';
import 'package:flutter_unit_converter/models/length/inch.dart';
import 'package:flutter_unit_converter/models/length/kilometer.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/meter.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/mile.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';
import 'package:flutter_unit_converter/models/length/nanometer.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';

class Centimeter extends Length {
  const Centimeter(super.value);

  @override
  String get unit => 'cm';

  @override
  Type get type => Centimeter;

  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer(value * (1000 * 1000 * 10));
      case Micrometer:
        return Micrometer(value * 10000);
      case Millimeter:
        return Millimeter(value * 10);
      case Inch:
        return Inch(value / (254 / 100));
      case Feet:
        return Feet(value / (3048 / 100));
      case Yard:
        return Yard(value / (9144 / 10 / 10));
      case Mile:
        return Mile(value / (1609344 / 10));
      case Meter:
        return Meter(value / 100);
      case Kilometer:
        return Kilometer(value / 100000);
      default:
        return this;
    }
  }
}
