import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';

class Kilometer extends Length {
  Kilometer(super.value);

  @override
  factory Kilometer.from(Length len) {
    double val = len.value;
    switch (len.type) {
      case Millimeter:
        val = val / 1000000;
        break;
      case Centimeter:
        val = val / 100000;
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
      case Millimeter:
        return Millimeter.from(this);
      case Centimeter:
        return Centimeter.from(this);
      case Meter:
        return Meter.from(this);
      default:
        return this;
    }
  }
}
