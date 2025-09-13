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
  const Milligram(super.value);

  @override
  String get unit => 'mg';

  @override
  Type get type => Milligram;

  @override
  Weight to(Type type) {
    switch (type) {
      case Gram:
        return Gram(value / 1000);
      case Kilogram:
        return Kilogram(value / (1000 * 1000));
      case MetricTone:
        return MetricTone(value / (1000 * 1000 * 1000));
      case Ounce:
        return Ounce(value / 28349.5231);
      case Pound:
        return Pound(value / 453592.37);
      case Stone:
        return Stone(value / 6350293.18);
      case ShortTone:
        return ShortTone(value / 907184740);
      case LongTone:
        return LongTone(value / 1016046908.8);
    }
    return this;
  }
}
