import 'package:flutter_unit_converter/models/temperature/celsius.dart';
import 'package:flutter_unit_converter/models/temperature/kelvin.dart';
import 'package:flutter_unit_converter/models/temperature/temperature.dart';

class Fahrenheit extends Temperature {
  Fahrenheit(super.value);

  factory Fahrenheit.from(Temperature temp) {
    double val = temp.value;
    switch (temp.type) {
      case Celsius:
        val = val * 9 / 5 + 32;
        break;
      case Kelvin:
        val = (val - 273.15) * 9 / 5 + 32;
        break;
    }
    return Fahrenheit(val);
  }

  @override
  Type get type => Fahrenheit;

  @override
  String get unit => '°F';

  @override
  Temperature to(Type type) {
    switch (type) {
      case Celsius:
        return Celsius.from(this);
      case Kelvin:
        return Kelvin.from(this);
    }
    return this;
  }
}
