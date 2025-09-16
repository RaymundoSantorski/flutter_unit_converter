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
  const Pound(super.value);

  @override
  Type get type => Pound;

  @override
  String get unit => 'lb';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram(value * 453592.37);
      case Gram:
        return Gram(value * 453.59237);
      case Kilogram:
        return Kilogram(value * 0.453592);
      case MetricTone:
        return MetricTone(value / 2204.62262);
      case Ounce:
        return Ounce(value * 16);
      case Stone:
        return Stone(value / 14);
      case ShortTone:
        return ShortTone(value / 2000);
      case LongTone:
        return LongTone(value / 2240);
    }
    return this;
  }
}
