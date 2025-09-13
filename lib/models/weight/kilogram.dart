import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/long_tone.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Kilogram extends Weight {
  const Kilogram(super.value);

  @override
  Type get type => Kilogram;

  @override
  String get unit => 'kg';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram(value * (1000 * 1000));
      case Gram:
        return Gram(value * 1000);
      case MetricTone:
        return MetricTone(value / 1000);
      case Ounce:
        return Ounce(value / 0.0283495231);
      case Pound:
        return Pound(value / 0.45359237);
      case Stone:
        return Stone(value / 6.35029318);
      case ShortTone:
        return ShortTone(value / 907.18474);
      case LongTone:
        return LongTone(value / 1016.0469088);
    }
    return this;
  }
}
