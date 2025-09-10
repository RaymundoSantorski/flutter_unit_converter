import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class MetricTone extends Weight {
  MetricTone(super.value);

  factory MetricTone.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / (1000 * 1000 * 1000);
        break;
      case Gram:
        val = val / (1000 * 1000);
        break;
      case Kilogram:
        val = val / 1000;
        break;
      case Ounce:
        val = val * 0.0000283495;
        break;
      case Pound:
        val = val * 0.000453592;
        break;
      case Stone:
        val = val * 0.00635029;
        break;
    }
    return MetricTone(val);
  }

  @override
  Type get type => MetricTone;

  @override
  String get unit => 't';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram.from(this);
      case Gram:
        return Gram.from(this);
      case Kilogram:
        return Kilogram.from(this);
      case Ounce:
        return Ounce.from(this);
      case Pound:
        return Pound.from(this);
      case Stone:
        return Stone.from(this);
    }
    return this;
  }
}
