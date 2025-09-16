import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';
import 'package:flutter_unit_converter/models/temperature/kelvin.dart';
import 'package:flutter_unit_converter/models/temperature/temperature.dart';

class Celsius extends Temperature {
  const Celsius(super.value);

  @override
  Type get type => Celsius;

  @override
  String get unit => '°C';

  @override
  Temperature to(Type type) {
    switch (type) {
      case Fahrenheit:
        return Fahrenheit(value * 9 / 5 + 32);
      case Kelvin:
        return Kelvin(value + 273.15);
    }
    return this;
  }
}
