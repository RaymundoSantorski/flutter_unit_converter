import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

List<Length> units = [
  Nanometer(0),
  Micrometer(0),
  Millimeter(0),
  Centimeter(0),
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
