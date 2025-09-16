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
  const MetricTone(super.value);

  @override
  Type get type => MetricTone;

  @override
  String get unit => 't';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram(value * (1000 * 1000 * 1000));
      case Gram:
        return Gram(value * (1000 * 1000));
      case Kilogram:
        return Kilogram(value * 1000);
      case Ounce:
        return Ounce(value / 0.0000283495231);
      case Pound:
        return Pound(value / 0.000453592);
      case Stone:
        return Stone(value / 0.006350293);
      case ShortTone:
        return ShortTone(value / 0.907185);
      case LongTone:
        return LongTone(value / 1.016047);
    }
    return this;
  }
}
