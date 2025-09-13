import 'package:flutter_unit_converter/models/volume/gallon.dart';
import 'package:flutter_unit_converter/models/volume/liter.dart';
import 'package:flutter_unit_converter/models/volume/volume_model.dart';

class Milliliter extends Volume {
  Milliliter(super.value);
  @override
  Type get type => Milliliter;

  @override
  String get unit => 'mL';

  @override
  Volume to(Type type) {
    switch (type) {
      case Liter:
        return Liter(value / 1000);
      case Gallon:
        return Gallon(value / 0.000264172);
    }
    return this;
  }
}
