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
  const LongTone(super.value);

  @override
  Type get type => LongTone;

  @override
  String get unit => 'LT';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram(value * 1016046908.8);
      case Gram:
        return Gram(value * 1016046.9088);
      case Kilogram:
        return Kilogram(value * 1016.0469);
      case MetricTone:
        return MetricTone(value / 0.984207);
      case Ounce:
        return Ounce(value * 35840);
      case Pound:
        return Pound(value * 2240);
      case Stone:
        return Stone(value * 160);
      case ShortTone:
        return ShortTone(value * 1.12);
    }
    return this;
  }
}
