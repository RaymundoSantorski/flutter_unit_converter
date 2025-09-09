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
    final mi = Mile(15.0);
    expect(mi.value, 15.0);
    expect(mi.type, Mile);
  });

  test('02 - The factory constructor converts from Nanometer to Mile', () {
    final nm = Nanometer(1609344000000.0);
    final mi = nm.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });

  test('03 - The factory constructor converts from Micrometer to Mile', () {
    final mcm = Micrometer(1609344000.0);
    final mi = mcm.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });

  test('04 - The factory constructor converts from Millimeter to Mile', () {
    final mm = Millimeter(1609344.0);
    final mi = mm.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });

  test('05 - The factory constructor converts from Centimeter to Mile', () {
    final cm = Centimeter(160934.4);
    final mi = cm.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });

  test('06 - The factory constructor converts from Meter to Mile', () {
    final m = Meter(1609.344);
    final mi = m.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });

  test('07 - The factory constructor converts from Kilometer to Mile', () {
    final km = Kilometer(1.609344);
    final mi = km.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });

  test('08 - The factory constructor converts from Inch to Mile', () {
    final _in = Inch(63360.0);
    final mi = _in.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });

  test('09 - The factory constructor converts from Feet to Mile', () {
    final ft = Feet(5280.0);
    final mi = ft.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });

  test('10 - The factory constructor converts from Yard to Mile', () {
    final yd = Yard(1760.0);
    final mi = yd.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });

  test('11 - The factory constructor converts from Mile to Mile', () {
    final mile = Mile(1.0);
    final mi = mile.to(Mile);

    expect(mi.value, 1.0);
    expect(mi.type, Mile);
  });
}
