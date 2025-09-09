import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class MetricTone extends Weight {
  MetricTone(super.value);

  factory MetricTone.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / (1000 * 1000 * 1000);
        break;
      case Gram:
        val = val / (1000 * 1000);
        break;
      case Kilogram:
        val = val / 1000;
        break;
    }
    return MetricTone(val);
  }

  @override
  Type get type => MetricTone;

  @override
  String get unit => 't';

  @override
  Weight to(Type type) {
    switch (type) {
      case Milligram:
        return Milligram.from(this);
      case Gram:
        return Gram.from(this);
      case Kilogram:
        return Kilogram.from(this);
    }
    return this;
  }
}
