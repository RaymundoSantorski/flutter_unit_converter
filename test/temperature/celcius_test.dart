import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/temperature/celsius.dart';
import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';
import 'package:flutter_unit_converter/models/temperature/kelvin.dart';

void main() {
  test('02 - The factory constructor converts from Celsius to Celsius', () {
    final celsius = Celsius(1.0);
    final c = celsius.to(Celsius);

    expect(c.value, 1.0);
    expect(c.type, Celsius);
  });

  test('03 - The factory constructor converts from Fahrenheit to Celsius', () {
    final f = Fahrenheit(32.0);
    final c = f.to(Celsius);

    expect(c.value, 0.0);
    expect(c.type, Celsius);
  });

  test('04 - The factory constructor converts from Kelvin to Celsius', () {
    final k = Kelvin(273.15);
    final c = k.to(Celsius);

    expect(c.value, 0.0);
    expect(c.type, Celsius);
  });
}
