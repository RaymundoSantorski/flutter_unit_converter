import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

/// Test of the Millimeter unit
void main() {
  test('The constructor asigns the correct value', () {
    final mm = Millimeter(15.0);
    expect(mm.value, 15.0);
    expect(mm.type, Millimeter);
  });

  test('The factory constructor converts from Nanometer to Millimeter', () {
    final nn = Nanometer(1000000.0); // 1,000,000 nn
    final mm = Millimeter.from(nn); // Expects 1 mm

    expect(mm.value, 1.0);
    expect(mm.type, Millimeter);
  });
  test('The factory constructor converts from Micrometer to Millimeter', () {
    final Mm = Micrometer(1000.0); // 1,000 Mm
    final mm = Millimeter.from(Mm); // Expects 1 mm

    expect(mm.value, 1.0);
    expect(mm.type, Millimeter);
  });
  test('The factory constructor converts from Millimeter to Millimeter', () {
    final mm1 = Millimeter(10.0); // 10 mm
    final mm2 = Millimeter.from(mm1); // Expects 10 mm

    expect(mm2.value, 10.0);
    expect(mm2.type, Millimeter);
  });

  test('The factory constructor converts from Centimeter to Millimeter', () {
    final cm = Centimeter(10.0); // 10 cm
    final mm = Millimeter.from(cm); // Expects 100 mm

    expect(mm.value, 100.0);
    expect(mm.type, Millimeter);
  });
  test('The factory constructor converts from Inch to Millimeter', () {
    final inch = Inch(10.0); // 10 in
    final mm = Millimeter.from(inch); // Expects 254 mm

    expect(mm.value, 254);
    expect(mm.type, Millimeter);
  });

  test('The factory constructor converts from Meter to Millimeter', () {
    final m = Meter(1.0); // 1m
    final mm = Millimeter.from(m); // Expects 1,000 mm

    expect(mm.value, 1000.0);
    expect(mm.type, Millimeter);
  });
  test('The factory constructor converts from Kilometer to Millimeter', () {
    final km = Kilometer(1.0); // 1km
    final mm = Millimeter.from(km); // Expects 1,000,000 mm

    expect(mm.value, 1000000.0);
    expect(mm.type, Millimeter);
  });
}
