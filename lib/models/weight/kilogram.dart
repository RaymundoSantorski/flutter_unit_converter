import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Kilogram extends Weight {
  Kilogram(super.value);

  factory Kilogram.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / (1000 * 1000);
        break;
      case Gram:
        val = val / 1000;
        break;
      case MetricTone:
        val = val * 1000;
        break;
      case Ounce:
        val = val * 0.0283495;
        break;
      case Pound:
        val = val * 0.453592;
        break;
      case Stone:
        val = val * 6.35029;
        break;
      case ShortTone:
        val = val * 907.185;
        break;
    }
    return Kilogram(val);
  }

  @override
  Type get type => Kilogram;

  @override
  String get unit => 'kg';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram.from(this);
      case Gram:
        return Gram.from(this);
      case MetricTone:
        return MetricTone.from(this);
      case Ounce:
        return Ounce.from(this);
      case Pound:
        return Pound.from(this);
      case Stone:
        return Stone.from(this);
      case ShortTone:
        return ShortTone.from(this);
    }
    return this;
  }
}
