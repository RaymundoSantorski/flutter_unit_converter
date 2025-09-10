import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Ounce extends Weight {
  Ounce(super.value);

  factory Ounce.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / 28349.5;
        break;
      case Gram:
        val = val / 28.3495;
        break;
      case Kilogram:
        val = val / 0.0283495;
        break;
      case MetricTone:
        val = val / 0.0000283495;
        break;
      case Pound:
        val = val * 16;
        break;
      case Stone:
        val = val * (14 * 16);
        break;
    }
    return Ounce(val);
  }

  @override
  Type get type => Ounce;

  @override
  String get unit => 'oz';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram.from(this);
      case Gram:
        return Gram.from(this);
      case Kilogram:
        return Kilogram.from(this);
      case MetricTone:
        return MetricTone.from(this);
      case Pound:
        return Pound.from(this);
      case Stone:
        return Stone.from(this);
    }
    return this;
  }
}
