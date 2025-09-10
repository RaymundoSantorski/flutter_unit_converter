import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';
import 'package:flutter_unit_converter/models/temperature/temperature.dart';

class Celcius extends Temperature {
  Celcius(super.value);
  factory Celcius.from(Temperature temp) {
    double val = temp.value;
    switch (temp.type) {
      case Fahrenheit:
        val = (val - 32) * 5 / 9;
        break;
    }
    return Celcius(val);
  }

  @override
  Type get type => Celcius;
  @override
  String get unit => '°C';
  @override
  Temperature to(Type type) {
    switch (type) {
      case Fahrenheit:
        return Fahrenheit.from(this);
    }
    return this;
  }
}
