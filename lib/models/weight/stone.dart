import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/long_tone.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Stone extends Weight {
  const Stone(super.value);

  @override
  Type get type => Stone;

  @override
  String get unit => 'st';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram(value * 6350293.18);
      case Gram:
        return Gram(value * 6350.29318);
      case Kilogram:
        return Kilogram(value * 6.35029);
      case MetricTone:
        return MetricTone(value / 157.47304);
      case Ounce:
        return Ounce(value * (16 * 14));
      case Pound:
        return Pound(value * 14);
      case ShortTone:
        return ShortTone(value / 142.85714);
      case LongTone:
        return LongTone(value / 160);
    }
    return this;
  }
}
