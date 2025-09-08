import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/feet.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';
import 'package:flutter_unit_converter/models/yard.dart';

void main() {
  test('The constructor asigns the correct value', () {
    final yd = Yard(15.0);
    expect(yd.value, 15.0);
    expect(yd.type, Yard);
  });

  test('The factory constructor converts from Nanometer to Yard', () {
    final nm = Nanometer(914400000.0); // 914,400,000 nn
    final yd = Yard.from(nm); // Expects 1 yd

    expect(yd.value, 1);
    expect(yd.type, Yard);
  });

  test('The factory constructor converts from Micrometer to Yard', () {
    final Mm = Micrometer(914400.0); // 914,400 Mm
    final yd = Yard.from(Mm); // Expects 1 yd

    expect(yd.value, 1);
    expect(yd.type, Yard);
  });
  test('The factory constructor converts from Millimeter to Yard', () {
    final mm = Millimeter(914.4); // 914.4 mm
    final yd = Yard.from(mm); // Expects 1 yd

    expect(yd.value, 1);
    expect(yd.type, Yard);
  });

  test('The factory constructor converts from Centimeter to Yard', () {
    final cm = Centimeter(91.44); // 91.44 cm
    final yd = Yard.from(cm); // Expects 1 yd

    expect(yd.value, 1);
    expect(yd.type, Yard);
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

  test('The factory constructor converts from Meter to Yard', () {
    final m = Meter(0.9144); // 0.9144 m
    final yd = Yard.from(m); // Expects 1 yd

    expect(yd.value, 1);
    expect(yd.type, Yard);
  });
  test('The factory constructor converts from Kilometer to Yard', () {
    final km = Kilometer(0.0009144); // 0.0009144 km
    final yd = Yard.from(km); // Expects 1 yd

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });
}
