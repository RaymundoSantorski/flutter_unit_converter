import 'package:flutter_unit_converter/models/temperature/celsius.dart';
import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';
import 'package:flutter_unit_converter/models/temperature/kelvin.dart';

List<Temperature> units = [Celsius(0), Fahrenheit(0), Kelvin(0)];

abstract class Temperature {
  double value;
  Temperature(this.value);

  factory Temperature.from(Temperature temp) {
    double val = temp.value;
    switch (temp.type) {}
    return Celsius(val);
  }

  Type get type => Temperature;
  String get unit => '';

  Temperature to(Type type) => this;
}
