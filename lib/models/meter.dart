import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/feet.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/mile.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';
import 'package:flutter_unit_converter/models/yard.dart';

/// class Meter with methods to convert from other length classes
class Meter extends Length {
  /// Constructor of the class, asigns the value
  Meter(super.value);

  /// returns a Meter from a Length object
  @override
  factory Meter.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Nanometer:
        val = val / 1000000000;
        break;
      case Micrometer:
        val = val / 1000000;
        break;
      case Millimeter:
        val = val / 1000;
        break;
      case Centimeter:
        val = val / 100;
        break;
      case Inch:
        val = val / (3937 / 100);
        break;
      case Feet:
        val = val / (3937 / 100 / 12);
        break;
      case Yard:
        val = val / (3937 / 100 / 12 / 3);
        break;
      case Mile:
        val = val / (3937 / 100 / 12 / 3 / 1760);
        break;
      case Kilometer:
        val = val * 1000;
    }

    return Meter(val);
  }

  @override
  String get unit => 'm';

  @override
  Type get type => Meter;

  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer.from(this);
      case Micrometer:
        return Micrometer.from(this);
      case Millimeter:
        return Millimeter.from(this);
      case Centimeter:
        return Centimeter.from(this);
      case Inch:
        return Inch.from(this);
      case Feet:
        return Feet.from(this);
      case Yard:
        return Yard.from(this);
      case Mile:
        return Mile.from(this);
      case Kilometer:
        return Kilometer.from(this);
      default:
        return this;
    }
  }
}
