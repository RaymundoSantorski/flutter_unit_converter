import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class ShortTone extends Weight {
  ShortTone(super.value);

  factory ShortTone.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / 907185000;
        break;
      case Gram:
        val = val / 907185;
        break;
      case Kilogram:
        val = val / 907.185;
        break;
      case MetricTone:
        val = val / 0.907185;
        break;
      case Ounce:
        val = val / (2000 * 16);
        break;
      case Pound:
        val = val / 2000;
        break;
      case Stone:
        val = val * 7 / 1000;
        break;
    }
    return ShortTone(val);
  }

  @override
  Type get type => ShortTone;

  @override
  String get unit => 'tn';

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
      case Pound:
        return Pound.from(this);
      case Stone:
        return Stone.from(this);
    }
    return this;
  }
}
