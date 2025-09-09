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
  test('01 - The constructor asigns the correct value', () {
    final cm = Feet(15.0);
    expect(cm.value, 15.0);
    expect(cm.type, Feet);
  });

  test('02 - The factory constructor converts from Nanometer to Feet', () {
    final nm = Nanometer(304800000.0);
    final ft = nm.to(Feet);

    expect(ft.value, 1.0);
    expect(ft.type, Feet);
  });

  test('03 - The factory constructor converts from Micrometer to Feet', () {
    final mcm = Micrometer(304800.0);
    final ft = mcm.to(Feet);

    expect(ft.value, 1.0);
    expect(ft.type, Feet);
  });

  test('04 - The factory constructor converts from Millimeter to Feet', () {
    final mm = Millimeter(304.8);
    final ft = mm.to(Feet);

    expect(ft.value, 1.0);
    expect(ft.type, Feet);
  });

  test('05 - The factory constructor converts from Centimeter to Feet', () {
    final cm = Centimeter(30.48);
    final ft = cm.to(Feet);

    expect(ft.value, 1.0);
    expect(ft.type, Feet);
  });

  test('06 - The factory constructor converts from Meter to Feet', () {
    final m = Meter(0.3048);
    final ft = m.to(Feet);

    expect(ft.value, 1.0);
    expect(ft.type, Feet);
  });

  test('07 - The factory constructor converts from Kilometer to Feet', () {
    final km = Kilometer(0.0003048);
    final ft = km.to(Feet);

    expect(ft.value, 1.0);
    expect(ft.type, Feet);
  });

  test('08 - The factory constructor converts from Inch to Feet', () {
    final _in = Inch(12.0);
    final ft = _in.to(Feet);

    expect(ft.value, 1.0);
    expect(ft.type, Feet);
  });

  test('09 - The factory constructor converts from Feet to Feet', () {
    final feet = Feet(1.0);
    final ft = feet.to(Feet);

    expect(ft.value, 1.0);
    expect(ft.type, Feet);
  });

  test('10 - The factory constructor converts from Yard to Feet', () {
    final yd = Yard(1.0);
    final ft = yd.to(Feet);

    expect(ft.value, 3.0);
    expect(ft.type, Feet);
  });

  test('11 - The factory constructor converts from Mile to Feet', () {
    final mi = Mile(1.0);
    final ft = mi.to(Feet);

    expect(ft.value, 5280.0);
    expect(ft.type, Feet);
  });
}
