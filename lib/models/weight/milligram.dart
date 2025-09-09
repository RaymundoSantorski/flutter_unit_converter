import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class Milligram extends Weight {
  Milligram(super.value);

  factory Milligram.from(Weight weight) {
    double val = weight.value;
    switch (weight.type) {
      case Gram:
        val = val * 1000;
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
    }
    return this;
  }
}
