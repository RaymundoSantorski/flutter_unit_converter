import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/long_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
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
        val = val / 35273.96195;
        break;
      case Pound:
        val = val / 2204.62262;
        break;
      case Stone:
        val = val / 157.47304;
        break;
      case ShortTone:
        val = val / 1.10231;
        break;
      case LongTone:
        val = val / 0.984207;
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
      case ShortTone:
        return ShortTone.from(this);
      case LongTone:
        return LongTone.from(this);
    }
    return this;
  }
}
