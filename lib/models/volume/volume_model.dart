import 'package:flutter_unit_converter/models/unit.dart';
import 'package:flutter_unit_converter/models/volume/gallon.dart';
import 'package:flutter_unit_converter/models/volume/liquid_ounce.dart';
import 'package:flutter_unit_converter/models/volume/liter.dart';
import 'package:flutter_unit_converter/models/volume/milliliter.dart';

List<Volume> volumeUnits = [Milliliter(0), Liter(0), Gallon(0), LiquidOunce(0)];

abstract class Volume extends Unit<Volume> {
  const Volume(super.value);
  factory Volume.from(Type type, double value) {
    switch (type) {
      case Liter:
        return Liter(value);
      case Gallon:
        return Gallon(value);
      case LiquidOunce:
        return LiquidOunce(value);
    }
    return Milliliter(value);
  }
}
