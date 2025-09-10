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
  Stone(super.value);

  factory Stone.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / 6350293.18;
        break;
      case Gram:
        val = val / 6350.29318;
        break;
      case Kilogram:
        val = val / 6.35029318;
        break;
      case MetricTone:
        val = val / 0.006350293;
        break;
      case Ounce:
        val = val / (16 * 14);
        break;
      case Pound:
        val = val / 14;
        break;
      case ShortTone:
        val = val * 142.85714;
        break;
      case LongTone:
        val = val * 160;
        break;
    }
    return Stone(val);
  }

  @override
  Type get type => Stone;

  @override
  String get unit => 'st';

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
      case ShortTone:
        return ShortTone.from(this);
      case LongTone:
        return LongTone.from(this);
    }
    return this;
  }
}
