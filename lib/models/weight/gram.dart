import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/long_tone.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Gram extends Weight {
  Gram(super.value);

  factory Gram.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / 1000;
        break;
      case Kilogram:
        val = val * 1000;
        break;
      case MetricTone:
        val = val * (1000 * 1000);
        break;
      case Ounce:
        val = val * 28.3495231;
        break;
      case Pound:
        val = val * 453.59237;
        break;
      case Stone:
        val = val * 6350.29318;
        break;
      case ShortTone:
        val = val * 907184.74;
        break;
      case LongTone:
        val = val * 1016046.9088;
        break;
    }
    return Gram(val);
  }

  @override
  Type get type => Gram;

  @override
  String get unit => 'g';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram.from(this);
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
