import 'package:flutter_unit_converter/models/volume/gallon.dart';
import 'package:flutter_unit_converter/models/volume/liquid_ounce.dart';
import 'package:flutter_unit_converter/models/volume/milliliter.dart';
import 'package:flutter_unit_converter/models/volume/volume_model.dart';

class Liter extends Volume {
  const Liter(super.value);

  @override
  Type get type => Liter;

  @override
  String get unit => 'L';

  @override
  Volume to(Type type) {
    switch (type) {
      case Milliliter:
        return Milliliter(value * 1000);
      case Gallon:
        return Gallon(value / 0.264172);
      case LiquidOunce:
        return LiquidOunce(value / 0.0295735000007998);
    }
    return this;
  }
}
