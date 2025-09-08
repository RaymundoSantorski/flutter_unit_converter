import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/feet.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/mile.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';
import 'package:flutter_unit_converter/models/yard.dart';

List<Length> units = [
  Nanometer(0),
  Micrometer(0),
  Millimeter(0),
  Centimeter(0),
  Inch(0),
  Feet(0),
  Yard(0),
  Mile(0),
  Meter(0),
  Kilometer(0),
];

abstract class Length {
  double value;
  Length(this.value);

  factory Length.from(Type type, double value) {
    switch (type) {
      case Micrometer:
        return Micrometer(value);
      case Millimeter:
        return Millimeter(value);
      case Centimeter:
        return Centimeter(value);
      case Inch:
        return Inch(value);
      case Feet:
        return Feet(value);
      case Yard:
        return Yard(value);
      case Mile:
        return Mile(value);
      case Meter:
        return Meter(value);
      case Kilometer:
        return Kilometer(value);
    }
    return Nanometer(value);
  }

  String get unit => '';

  Type get type => Length;

  Length to(Type type) => this;
}
