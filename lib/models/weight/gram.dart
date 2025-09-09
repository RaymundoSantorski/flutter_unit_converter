import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Gram extends Weight {
  Gram(super.value);

  factory Gram.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / 1000;
        break;
      case Kilogram:
        val = val * 1000;
        break;
      case MetricTone:
        val = val * (1000 * 1000);
        break;
    }
    return Gram(val);
  }

  @override
  Type get type => Gram;

  @override
  String get unit => 'g';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram.from(this);
      case Kilogram:
        return Kilogram.from(this);
      case MetricTone:
        return MetricTone.from(this);
    }
    return this;
  }
}
