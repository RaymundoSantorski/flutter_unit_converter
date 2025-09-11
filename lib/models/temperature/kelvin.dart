import 'package:flutter_unit_converter/models/temperature/celcius.dart';
import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';
import 'package:flutter_unit_converter/models/temperature/temperature.dart';

class Kelvin extends Temperature {
  Kelvin(super.value);

  factory Kelvin.from(Temperature temp) {
    double val = temp.value;
    switch (temp.type) {
      case Celcius:
        val = val + 273.15;
        break;
      case Fahrenheit:
        val = (val - 32) * 5 / 9 + 273.15;
        break;
    }
    return Kelvin(val);
  }

  @override
  Type get type => Kelvin;

  @override
  String get unit => 'K';

  @override
  Temperature to(Type type) {
    switch (type) {
      case Celcius:
        return Celcius.from(this);
      case Fahrenheit:
        return Fahrenheit.from(this);
    }
    return this;
  }
}
