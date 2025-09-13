import 'package:flutter_unit_converter/models/length/centimeter.dart';
import 'package:flutter_unit_converter/models/length/feet.dart';
import 'package:flutter_unit_converter/models/length/inch.dart';
import 'package:flutter_unit_converter/models/length/kilometer.dart';
import 'package:flutter_unit_converter/models/length/meter.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/mile.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';
import 'package:flutter_unit_converter/models/length/nanometer.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';
import 'package:flutter_unit_converter/models/unit.dart';

List<Length> lengthUnits = const [
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

abstract class Length extends Unit<Length> {
  const Length(super.value);

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
}
