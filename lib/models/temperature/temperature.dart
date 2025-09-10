import 'package:flutter_unit_converter/models/temperature/celcius.dart';

List<Temperature> units = [];

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
