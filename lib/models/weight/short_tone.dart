import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/long_tone.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class ShortTone extends Weight {
  const ShortTone(super.value);

  @override
  Type get type => ShortTone;

  @override
  String get unit => 'tn';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram(value * 907184740.0);
      case Gram:
        return Gram(value * 907184.74);
      case Kilogram:
        return Kilogram(value * 907.18474);
      case MetricTone:
        return MetricTone(value / 1.10231);
      case Ounce:
        return Ounce(value * (2000 * 16));
      case Pound:
        return Pound(value * 2000);
      case Stone:
        return Stone(value * 142.85714);
      case LongTone:
        return LongTone(value / 1.12);
    }
    return this;
  }
}
