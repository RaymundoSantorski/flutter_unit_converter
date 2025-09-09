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
  Kilometer(super.value);

  @override
  factory Kilometer.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Nanometer:
        val = val / 1000000000000;
        break;
      case Micrometer:
        val = val / 1000000000;
        break;
      case Millimeter:
        val = val / 1000000;
        break;
      case Centimeter:
        val = val / 100000;
        break;
      case Inch:
        val = val / 39370;
        break;
      case Feet:
        val = val / (39370 / 12);
        break;
      case Yard:
        val = val / (39370 / 36);
        break;
      case Mile:
        val = val / (39370 / 63360);
        break;
      case Meter:
        val = val / 1000;
    }

    return Kilometer(val);
  }

  @override
  String get unit => 'km';

  @override
  Type get type => Kilometer;

  @override
  Length to(Type type) {
    switch (type) {
      case Nanometer:
        return Nanometer.from(this);
      case Micrometer:
        return Micrometer.from(this);
      case Millimeter:
        return Millimeter.from(this);
      case Inch:
        return Inch.from(this);
      case Feet:
        return Feet.from(this);
      case Yard:
        return Yard.from(this);
      case Mile:
        return Mile.from(this);
      case Centimeter:
        return Centimeter.from(this);
      case Meter:
        return Meter.from(this);
      default:
        return this;
    }
  }
}
