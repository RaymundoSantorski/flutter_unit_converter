import 'package:flutter_unit_converter/models/volume/liter.dart';
import 'package:flutter_unit_converter/models/volume/milliliter.dart';
import 'package:flutter_unit_converter/models/volume/volume_model.dart';

class Gallon extends Volume {
  const Gallon(super.value);

  @override
  Type get type => Gallon;

  @override
  String get unit => 'gal';

  @override
  Volume to(Type type) {
    switch (type) {
      case Milliliter:
        return Milliliter(value / 3785.40999993543);
      case Liter:
        return Liter(value / 3.78541);
    }
    return this;
  }
}
