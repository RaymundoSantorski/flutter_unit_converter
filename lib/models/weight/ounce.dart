import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/long_tone.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Ounce extends Weight {
  const Ounce(super.value);

  @override
  Type get type => Ounce;

  @override
  String get unit => 'oz';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram(value * 28349.5231);
      case Gram:
        return Gram(value * 28.3495231);
      case Kilogram:
        return Kilogram(value * 0.0283495);
      case MetricTone:
        return MetricTone(value / 35273.96195);
      case Pound:
        return Pound(value / 16);
      case Stone:
        return Stone(value / (14 * 16));
      case ShortTone:
        return ShortTone(value / (2000 * 16));
      case LongTone:
        return LongTone(value / 35840);
    }
    return this;
  }
}
