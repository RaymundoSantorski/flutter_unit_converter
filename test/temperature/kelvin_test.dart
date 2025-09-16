import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/temperature/celsius.dart';
import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';
import 'package:flutter_unit_converter/models/temperature/kelvin.dart';

void main() {
  test('02 - The factory constructor converts from Celsius to Kelvin', () {
    final c = Celsius(0.0);
    final k = c.to(Kelvin);

    expect(k.value, 273.15);
    expect(k.type, Kelvin);
  });

  test('03 - The factory constructor converts from Fahrenheit to Kelvin', () {
    final f = Fahrenheit(32.0);
    final k = f.to(Kelvin);

    expect(k.value, 273.15);
    expect(k.type, Kelvin);
  });

  test('04 - The factory constructor converts from Kelvin to Kelvin', () {
    final kelvin = Kelvin(1.0);
    final k = kelvin.to(Kelvin);

    expect(k.value, 1.0);
    expect(k.type, Kelvin);
  });
}
