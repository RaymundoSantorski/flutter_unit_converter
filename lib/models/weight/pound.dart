import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/long_tone.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Pound extends Weight {
  Pound(super.value);

  factory Pound.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / 453592.37;
        break;
      case Gram:
        val = val / 453.59237;
        break;
      case Kilogram:
        val = val / 0.45359237;
        break;
      case MetricTone:
        val = val / 0.000453592;
        break;
      case Ounce:
        val = val / 16;
        break;
      case Stone:
        val = val * 14;
        break;
      case ShortTone:
        val = val * 2000;
        break;
      case LongTone:
        val = val * 2240;
        break;
    }
    return Pound(val);
  }

  @override
  Type get type => Pound;

  @override
  String get unit => 'lb';

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
      case Ounce:
        return Ounce.from(this);
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
