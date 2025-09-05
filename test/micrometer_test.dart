import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

/// Test of the Micrometer unit
void main() {
  test('The constructor asigns the correct value', () {
    final Mm = Micrometer(10.0);
    expect(Mm.value, 10.0);
    expect(Mm.type, Micrometer);
  });

  test('The factory constructor converts from Nanometer to Micrometer', () {
    final nm = Nanometer(1000); // 1,000nm
    final Mm = Micrometer.from(nm); // Expects 1Mm
    expect(Mm.value, 1.0);
    expect(Mm.type, Micrometer);
  });
  test('The factory constructor converts from Micrometer to Micrometer', () {
    final nm = Micrometer(1000); // 1,000nm
    final Mm = Micrometer.from(nm); // Expects 1,000Mm
    expect(Mm.value, 1000.0);
    expect(Mm.type, Micrometer);
  });
  test('The factory constructor converts from Millimeter to Micrometer', () {
    final mm = Millimeter(0.001); // 0.001mm
    final Mm = Micrometer.from(mm); // Expects 1Mm
    expect(Mm.value, 1.0);
    expect(Mm.type, Micrometer);
  });
  test('The factory constructor converts from Centimeter to Micrometer', () {
    final cm = Centimeter(0.001); // 0.001mm
    final Mm = Micrometer.from(cm); // Expects 10Mm
    expect(Mm.value, 10.0);
    expect(Mm.type, Micrometer);
  });
  test('The factory constructor converts from Inch to Micrometer', () {
    final cm = Inch(1); // 1 in
    final Mm = Micrometer.from(cm); // Expects 25400Mm
    expect(Mm.value, 25400.0);
    expect(Mm.type, Micrometer);
  });
  test('The factory constructor converts from Meter to Micrometer', () {
    final m = Meter(1); // 1m
    final Mm = Micrometer.from(m); // Expects 1,000,000Mm
    expect(Mm.value, 1000000);
    expect(Mm.type, Micrometer);
  });
  test('The factory constructor converts from Kilometer to Micrometer', () {
    final km = Kilometer(1); // 1m
    final Mm = Micrometer.from(km); // Expects 1,000,000,000Mm
    expect(Mm.value, 1000000000);
    expect(Mm.type, Micrometer);
  });
}
