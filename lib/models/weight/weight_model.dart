import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';

List<Weight> units = [Milligram(0), Gram(0), Kilogram(0), MetricTone(0)];

abstract class Weight {
  double value;
  Weight(this.value);

  factory Weight.from(Type type, double value) {
    switch (type) {
      case Gram:
        return Gram(value);
      case Kilogram:
        return Kilogram(value);
      case MetricTone:
        return MetricTone(value);
    }
    return Milligram(value);
  }

  String get unit => '';
  Type get type => Weight;
  Weight to(Type type) => this;
}
