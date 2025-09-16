import 'package:flutter_unit_converter/models/volume/gallon.dart';
import 'package:flutter_unit_converter/models/volume/liter.dart';
import 'package:flutter_unit_converter/models/volume/milliliter.dart';
import 'package:flutter_unit_converter/models/volume/volume_model.dart';

class LiquidOunce extends Volume {
  const LiquidOunce(super.value);

  @override
  Type get type => LiquidOunce;

  @override
  String get unit => 'fl oz';

  @override
  Volume to(Type type) {
    switch (type) {
      case Milliliter:
        return Milliliter(value * 29.5735);
      case Liter:
        return Liter(value * 0.0295735);
      case Gallon:
        return Gallon(value / 128);
    }
    return this;
  }
}
