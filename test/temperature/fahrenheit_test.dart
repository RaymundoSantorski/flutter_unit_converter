import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/temperature/celsius.dart';
import 'package:flutter_unit_converter/models/temperature/fahrenheit.dart';
import 'package:flutter_unit_converter/models/temperature/kelvin.dart';

void main() {
  test('02 - The factory constructor converts from Celsius to Fahrenheit', () {
    final c = Celsius(0.0);
    final f = c.to(Fahrenheit);

    expect(f.value, 32.0);
    expect(f.type, Fahrenheit);
  });

  test(
    '03 - The factory constructor converts from Fahrenheit to Fahrenheit',
    () {
      final fahrenheit = Fahrenheit(1.0);
      final f = fahrenheit.to(Fahrenheit);

      expect(f.value, 1.0);
      expect(f.type, Fahrenheit);
    },
  );

  test('04 - The factory constructor converts from Kelvin to Fahrenheit', () {
    final k = Kelvin(273.15);
    final f = k.to(Fahrenheit);

    expect(f.value, 32.0);
    expect(f.type, Fahrenheit);
  });
}
