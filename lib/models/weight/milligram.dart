import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/long_tone.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Milligram extends Weight {
  Milligram(super.value);

  factory Milligram.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Gram:
        val = val * 1000;
        break;
      case Kilogram:
        val = val * (1000 * 1000);
        break;
      case MetricTone:
        val = val * (1000 * 1000 * 1000);
        break;
      case Ounce:
        val = val * 28349.5231;
        break;
      case Pound:
        val = val * 453592.37;
        break;
      case Stone:
        val = val * 6350293.18;
        break;
      case ShortTone:
        val = val * 907184740;
        break;
      case LongTone:
        val = val * 1016046908.8;
        break;
    }
    return Milligram(val);
  }

  @override
  String get unit => 'mg';

  @override
  Type get type => Milligram;

  @override
  Weight to(Type type) {
    switch (type) {
      case Gram:
        return Gram.from(this);
      case Kilogram:
        return Kilogram.from(this);
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
      case LongTone:
        return LongTone.from(this);
    }
    return this;
  }
}
