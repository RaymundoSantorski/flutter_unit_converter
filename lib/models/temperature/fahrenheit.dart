import 'package:flutter_unit_converter/models/temperature/celsius.dart';
import 'package:flutter_unit_converter/models/temperature/kelvin.dart';
import 'package:flutter_unit_converter/models/temperature/temperature.dart';

class Fahrenheit extends Temperature {
  const Fahrenheit(super.value);

  @override
  Type get type => Fahrenheit;

  @override
  String get unit => '°F';

  @override
  Temperature to(Type type) {
    switch (type) {
      case Celsius:
        return Celsius((value - 32) * 5 / 9);
      case Kelvin:
        return Kelvin((value - 32) * 5 / 9 + 273.15);
    }
    return this;
  }
}
