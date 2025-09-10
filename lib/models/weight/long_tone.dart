import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class LongTone extends Weight {
  LongTone(super.value);

  factory LongTone.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / 1016050000;
        break;
      case Gram:
        val = val / 1016050;
        break;
      case Kilogram:
        val = val / 1016.05;
        break;
      case MetricTone:
        val = val / 1.01605;
        break;
      case Ounce:
        val = val / 35840;
        break;
      case Pound:
        val = val / 2240;
        break;
      case Stone:
        val = val / 160;
        break;
      case ShortTone:
        val = val / 1.12;
        break;
    }
    return LongTone(val);
  }

  @override
  Type get type => LongTone;

  @override
  String get unit => 'LT';

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
      case ShortTone:
        return ShortTone.from(this);
    }
    return this;
  }
}
