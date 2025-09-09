import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Kilogram extends Weight {
  Kilogram(super.value);

  factory Kilogram.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / (1000 * 1000);
        break;
      case Gram:
        val = val / 1000;
        break;
      case MetricTone:
        val = val * 1000;
        break;
    }
    return Kilogram(val);
  }

  @override
  Type get type => Kilogram;

  @override
  String get unit => 'kg';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram.from(this);
      case Gram:
        return Gram.from(this);
      case MetricTone:
        return MetricTone.from(this);
    }
    return this;
  }
}
