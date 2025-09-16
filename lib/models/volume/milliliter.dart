import 'package:flutter_unit_converter/models/volume/gallon.dart';
import 'package:flutter_unit_converter/models/volume/liquid_ounce.dart';
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
        return Gallon(value / 3785.41);
      case LiquidOunce:
        return LiquidOunce(value / 29.5735);
    }
    return this;
  }
}
