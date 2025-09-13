import 'package:flutter_unit_converter/models/temperature/celsius.dart';
import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';
import 'package:flutter_unit_converter/models/temperature/temperature.dart';

class Kelvin extends Temperature {
  const Kelvin(super.value);

  @override
  Type get type => Kelvin;

  @override
  String get unit => 'K';

  @override
  Temperature to(Type type) {
    switch (type) {
      case Celsius:
        return Celsius(value - 273.15);
      case Fahrenheit:
        return Fahrenheit((value - 273.15) * 9 / 5 + 32);
    }
    return this;
  }
}
