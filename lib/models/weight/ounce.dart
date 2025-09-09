import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Ounce extends Weight {
  Ounce(super.value);

  factory Ounce.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Milligram:
        val = val / 28349.5;
        break;
      case Gram:
        val = val / 28.3495;
        break;
      case Kilogram:
        val = val / 0.0283495;
        break;
      case MetricTone:
        val = val / 0.0000283495;
        break;
    }
    return Ounce(val);
  }

  @override
  Type get type => Ounce;

  @override
  String get unit => 'oz';

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
    }
    return this;
  }
}
