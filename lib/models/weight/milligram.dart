import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Milligram extends Weight {
  Milligram(super.value);

  factory Milligram.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Gram:
        val = val * 1000;
        break;
      case Kilogram:
        val = val * (1000 * 1000);
        break;
      case MetricTone:
        val = val * (1000 * 1000 * 1000);
        break;
      case Ounce:
        val = val * 28349.5;
        break;
      case Pound:
        val = val * 453592;
        break;
    }
    return Milligram(val);
  }

  @override
  String get unit => 'mg';

  @override
  Type get type => Milligram;

  @override
  Weight to(Type type) {
    switch (type) {
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
    }
    return this;
  }
}
