import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

void main() {
  test('The constructor asigns the correct value', () {
    final cm = Centimeter(15.0);
    expect(cm.value, 15.0);
    expect(cm.type, Centimeter);
  });

  test('The factory constructor converts from Nanometer to Centimeter', () {
    final nn = Nanometer(1000000.0); // 1,000,000 nn
    final cm = Centimeter.from(nn); // Expects 0.1 mm

    expect(cm.value, 0.1);
    expect(cm.type, Centimeter);
  });
  test('The factory constructor converts from Micrometer to Centimeter', () {
    final Mm = Micrometer(1000.0); // 1,000 Mm
    final cm = Centimeter.from(Mm); // Expects 0.1 cm

    expect(cm.value, 0.1);
    expect(cm.type, Centimeter);
  });
  test('The factory constructor converts from Millimeter to Centimeter', () {
    final mm = Millimeter(10.0); // 10 mm
    final cm = Centimeter.from(mm); // Expects 1 cm

    expect(cm.value, 1.0);
    expect(cm.type, Centimeter);
  });

  test('The factory constructor converts from Centimeter to Centimeter', () {
    final cm = Centimeter(10.0); // 10 cm
    final mm = Centimeter.from(cm); // Expects 10 cm

    expect(mm.value, 10.0);
    expect(mm.type, Centimeter);
  });
  test('The factory constructor converts from Inch to Centimeter', () {
    final inch = Inch(10.0); // 10 in
    final cm = Centimeter.from(inch); // Expects 25.4 cm

    expect(cm.value, 25.4);
    expect(cm.type, Centimeter);
  });

  test('The factory constructor converts from Meter to Centimeter', () {
    final m = Meter(1.0); // 1m
    final cm = Centimeter.from(m); // Expects 100 cm

    expect(cm.value, 100.0);
    expect(cm.type, Centimeter);
  });
  test('The factory constructor converts from Kilometer to Centimeter', () {
    final km = Kilometer(1.0); // 1km
    final cm = Centimeter.from(km); // Expects 100,000 cm

    expect(cm.value, 100000.0);
    expect(cm.type, Centimeter);
  });
}
