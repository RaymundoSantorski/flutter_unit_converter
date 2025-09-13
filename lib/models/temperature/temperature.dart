import 'package:flutter_unit_converter/models/temperature/celsius.dart';
import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';
import 'package:flutter_unit_converter/models/temperature/kelvin.dart';
import 'package:flutter_unit_converter/models/unit.dart';

List<Temperature> temperatureUnits = const [
  Celsius(0),
  Fahrenheit(0),
  Kelvin(0),
];

abstract class Temperature extends Unit<Temperature> {
  // double value;
  const Temperature(super.value);

  factory Temperature.from(Type type, double value) {
    switch (type) {
      case Kelvin:
        return Kelvin(value);
      case Fahrenheit:
        return Fahrenheit(value);
    }
    return Celsius(value);
  }
}
