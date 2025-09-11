import 'package:flutter_unit_converter/models/temperature/celcius.dart';
import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';

List<Temperature> units = [Celcius(0), Fahrenheit(0)];

abstract class Temperature {
  double value;
  Temperature(this.value);

  factory Temperature.from(Temperature temp) {
    double val = temp.value;
    switch (temp.type) {}
    return Celcius(val);
  }

  Type get type => Temperature;
  String get unit => '';

  Temperature to(Type type) => this;
}
