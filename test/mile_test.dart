import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/feet.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/mile.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';
import 'package:flutter_unit_converter/models/yard.dart';

void main() {
  test('The constructor asigns the correct value', () {
    final mi = Mile(15.0);
    expect(mi.value, 15.0);
    expect(mi.type, Mile);
  });

  test('The factory constructor converts from Nanometer to Mile', () {
    final nm = Nanometer(1609344000000.0); // 1,609,344,000,000 nn
    final mi = Mile.from(nm); // Expects 1 yd

    expect(mi.value, 1);
    expect(mi.type, Mile);
  });

  test('The factory constructor converts from Micrometer to Mile', () {
    final Mm = Micrometer(1609344000.0); // 1,609,344,000 Mm
    final mi = Mile.from(Mm); // Expects 1 yd

    expect(mi.value, 1);
    expect(mi.type, Mile);
  });
  test('The factory constructor converts from Millimeter to Mile', () {
    final mm = Millimeter(1609344); // 1,609,344 mm
    final mi = Mile.from(mm); // Expects 1 yd

    expect(mi.value, 1);
    expect(mi.type, Mile);
  });

  test('The factory constructor converts from Centimeter to Mile', () {
    final cm = Centimeter(160934.4); // 16,093.4 cm
    final mi = Mile.from(cm); // Expects 1 yd

    expect(mi.value, 1);
    expect(mi.type, Mile);
  });
  test('The factory constructor converts from Inch to Yard', () {
    final inch = Inch(36); // 36 in
    final yd = Yard.from(inch); // Expects 1 yd

    expect(yd.value, 1);
    expect(yd.type, Yard);
  });
  test('The factory constructor converts from Feet to Yard', () {
    final ft = Feet(3); // 3 ft
    final yd = Yard.from(ft); // Expects 1 yd

    expect(yd.value, 1);
    expect(yd.type, Yard);
  });
  test('The factory constructor converts from Yard to Yard', () {
    final yard = Yard(10.0); // 10 yd
    final yd = Yard.from(yard); // Expects 10 yd

    expect(yd.value, 10);
    expect(yd.type, Yard);
  });

  test('The factory constructor converts from Meter to Mile', () {
    final m = Meter(1609.344); // 1609.344 m
    final mi = Mile.from(m); // Expects 1 yd

    expect(mi.value, 1);
    expect(mi.type, Mile);
  });
  test('The factory constructor converts from Kilometer to Mile', () {
    final km = Kilometer(1.609344); // 1.609344 km
    final mi = Mile.from(km); // Expects 1 yd

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });
}
