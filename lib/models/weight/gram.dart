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
    }
    return this;
  }
}
