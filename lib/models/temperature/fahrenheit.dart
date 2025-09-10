import 'package:flutter_unit_converter/models/temperature/celcius.dart';
import 'package:flutter_unit_converter/models/temperature/temperature.dart';

class Fahrenheit extends Temperature {
  Fahrenheit(super.value);

  factory Fahrenheit.from(Temperature temp) {
    double val = temp.value;
    switch (temp.type) {
      case Celcius:
        val = val * 9 / 5 + 32;
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
      case Celcius:
        return Celcius.from(this);
    }
    return this;
  }
}
