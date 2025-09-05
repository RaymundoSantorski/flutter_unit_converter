import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

/// Test of the Nanometer unit
void main() {
  test('The constructor asigns the correct value', () {
    final nm = Nanometer(20.0);
    expect(nm.value, 20.0);
    expect(nm.type, Nanometer);
  });

  test('The factory constructor converts from Nanometer to Nanometer', () {
    final nn = Nanometer(1.0); // 1 nm
    final mm = Nanometer.from(nn); // Expects 1 nm

    expect(mm.value, 1.0);
    expect(mm.type, Nanometer);
  });
  test('The factory constructor converts from Micrometer to Nanometer', () {
    final mm = Micrometer(1.0); // 1 Mm
    final nm = Nanometer.from(mm); // Expects 1,000 nm

    expect(nm.value, 1000.0);
    expect(nm.type, Nanometer);
  });
  test('The factory constructor converts from Millimeter to Nanometer', () {
    final mm = Millimeter(0.1); // 0.1 mm
    final nm = Nanometer.from(mm); // Expects 100,000 nm

    expect(nm.value, 100000.0);
    expect(nm.type, Nanometer);
  });
  test('The factory constructor converts from Centimeter to Nanometer', () {
    final mm = Centimeter(0.01); // 1 cm
    final nm = Nanometer.from(mm); // Expects 100,000 nm

    expect(nm.value, 100000.0);
    expect(nm.type, Nanometer);
  });
  test('The factory constructor converts from Inch to Nanometer', () {
    final mm = Inch(0.0001); // 1 in
    final nm = Nanometer.from(mm); // Expects 2,540 nm

    expect(nm.value, 2540.0);
    expect(nm.type, Nanometer);
  });
  test('The factory constructor converts from Meter to Nanometer', () {
    final m = Meter(0.0001); // 1 m
    final nm = Nanometer.from(m); // Expects 100,000 nm

    expect(nm.value, 100000.0);
    expect(nm.type, Nanometer);
  });
  test('The factory constructor converts from Kilometer to Nanometer', () {
    final km = Kilometer(0.0001); // 1 km
    final nm = Nanometer.from(km); // Expects 100,000,000 nm

    expect(nm.value, 100000000.0);
    expect(nm.type, Nanometer);
  });
}
