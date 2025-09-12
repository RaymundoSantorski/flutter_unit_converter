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
  const Gram(super.value);
  @override
  Type get type => Gram;

  @override
  String get unit => 'g';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram(value * 1000);
      case Kilogram:
        return Kilogram(value / 1000);
      case MetricTone:
        return MetricTone(value / (1000 * 1000));
      case Ounce:
        return Ounce(value / 28.3495231);
      case Pound:
        return Pound(value / 453.59237);
      case Stone:
        return Stone(value / 6350.29318);
      case ShortTone:
        return ShortTone(value / 907184.74);
      case LongTone:
        return LongTone(value / 1016046.9088);
    }
    return this;
  }
}
