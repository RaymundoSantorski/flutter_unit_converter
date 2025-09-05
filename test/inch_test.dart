import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

/// Test of the Inch unit
void main() {
  test('The constructor asigns the correct value', () {
    final nm = Inch(20.0);
    expect(nm.value, 20.0);
    expect(nm.type, Inch);
  });

  test('The factory constructor converts from Nanometer to Inch', () {
    final nn = Nanometer(25400000.0); // 25,400,000 nm
    final mm = Inch.from(nn); // Expects 1 in

    expect(mm.value, 1.0);
    expect(mm.type, Inch);
  });
  test('The factory constructor converts from Micrometer to Inch', () {
    final mm = Micrometer(25400.0); // 25,400 Mm
    final nm = Inch.from(mm); // Expects 1 in

    expect(nm.value, 1);
    expect(nm.type, Inch);
  });
  test('The factory constructor converts from Millimeter to Inch', () {
    final mm = Millimeter(25.4); // 25.4 mm
    final nm = Inch.from(mm); // Expects 1 in

    expect(nm.value, 1.0);
    expect(nm.type, Inch);
  });
  test('The factory constructor converts from Centimeter to Inch', () {
    final mm = Centimeter(2.54); // 2.54 cm
    final nm = Inch.from(mm); // Expects 1 in

    expect(nm.value, 1.0);
    expect(nm.type, Inch);
  });
  test('The factory constructor converts from Inch to Inch', () {
    final mm = Inch(1); // 1 in
    final nm = Inch.from(mm); // Expects 1 in

    expect(nm.value, 1.0);
    expect(nm.type, Inch);
  });
  test('The factory constructor converts from Meter to Inch', () {
    final m = Meter(2.54); // 2.54 m
    final nm = Inch.from(m); // Expects 100 in

    expect(nm.value, 100.0);
    expect(nm.type, Inch);
  });
  test('The factory constructor converts from Kilometer to Inch', () {
    final km = Kilometer(2.54); // 2.54 km
    final nm = Inch.from(km); // Expects 100,000 in

    expect(nm.value, 100000.0);
    expect(nm.type, Inch);
  });
}
