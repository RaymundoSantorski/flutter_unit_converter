import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/feet.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

void main() {
  test('The constructor asigns the correct value', () {
    final cm = Feet(15.0);
    expect(cm.value, 15.0);
    expect(cm.type, Feet);
  });

  test('The factory constructor converts from Nanometer to Feet', () {
    final nm = Nanometer(304800000.0); // 304,800,000 nn
    final ft = Feet.from(nm); // Expects 1 ft

    expect(ft.value, 1);
    expect(ft.type, Feet);
  });
  test('The factory constructor converts from Micrometer to Feet', () {
    final Mm = Micrometer(304800.0); // 304,800 Mm
    final ft = Feet.from(Mm); // Expects 1 ft

    expect(ft.value, 1);
    expect(ft.type, Feet);
  });
  test('The factory constructor converts from Millimeter to Feet', () {
    final mm = Millimeter(304.8); // 304.8 mm
    final ft = Feet.from(mm); // Expects 1 ft

    expect(ft.value, 1);
    expect(ft.type, Feet);
  });

  test('The factory constructor converts from Centimeter to Feet', () {
    final cm = Centimeter(30.48); // 30.48 cm
    final ft = Feet.from(cm); // Expects 1 ft

    expect(ft.value, 1);
    expect(ft.type, Feet);
  });
  test('The factory constructor converts from Inch to Feet', () {
    final inch = Inch(12); // 122 in
    final ft = Feet.from(inch); // Expects 1 ft

    expect(ft.value, 1);
    expect(ft.type, Feet);
  });
  test('The factory constructor converts from Feet to Feet', () {
    final feet = Feet(10.0); // 10 ft
    final ft = Feet.from(feet); // Expects 10 ft

    expect(ft.value, 10);
    expect(ft.type, Feet);
  });

  test('The factory constructor converts from Meter to Feet', () {
    final m = Meter(0.3048); // 0.3048 m
    final ft = Feet.from(m); // Expects 1 ft

    expect(ft.value, 1);
    expect(ft.type, Feet);
  });
  test('The factory constructor converts from Kilometer to Feet', () {
    final km = Kilometer(0.0003048); // 0.0003048 km
    final ft = Feet.from(km); // Expects 1 ft

    expect(ft.value, 1.0);
    expect(ft.type, Feet);
  });
}
