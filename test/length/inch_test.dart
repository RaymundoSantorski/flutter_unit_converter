import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/length/centimeter.dart';
import 'package:flutter_unit_converter/models/length/feet.dart';
import 'package:flutter_unit_converter/models/length/inch.dart';
import 'package:flutter_unit_converter/models/length/kilometer.dart';
import 'package:flutter_unit_converter/models/length/meter.dart';
import 'package:flutter_unit_converter/models/length/micrometer.dart';
import 'package:flutter_unit_converter/models/length/mile.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';
import 'package:flutter_unit_converter/models/length/nanometer.dart';
import 'package:flutter_unit_converter/models/length/yard.dart';

/// Test of the Inch unit
void main() {
  test('01 - The constructor asigns the correct value', () {
    final nm = Inch(20.0);
    expect(nm.value, 20.0);
    expect(nm.type, Inch);
  });

  test('02 - The factory constructor converts from Nanometer to Inch', () {
    final nm = Nanometer(25400000.0);
    final _in = nm.to(Inch);

    expect(_in.value, 1.0);
    expect(_in.type, Inch);
  });

  test('03 - The factory constructor converts from Micrometer to Inch', () {
    final mcm = Micrometer(25400.0);
    final _in = mcm.to(Inch);

    expect(_in.value, 1.0);
    expect(_in.type, Inch);
  });

  test('04 - The factory constructor converts from Millimeter to Inch', () {
    final mm = Millimeter(25.4);
    final _in = mm.to(Inch);

    expect(_in.value, 1.0);
    expect(_in.type, Inch);
  });

  test('05 - The factory constructor converts from Centimeter to Inch', () {
    final cm = Centimeter(2.54);
    final _in = cm.to(Inch);

    expect(_in.value, 1.0);
    expect(_in.type, Inch);
  });

  test('06 - The factory constructor converts from Meter to Inch', () {
    final m = Meter(0.0254);
    final _in = m.to(Inch);

    expect(_in.value, 1.0);
    expect(_in.type, Inch);
  });

  test('07 - The factory constructor converts from Kilometer to Inch', () {
    final km = Kilometer(0.0000254);
    final _in = km.to(Inch);

    expect(_in.value, 1.0);
    expect(_in.type, Inch);
  });

  test('08 - The factory constructor converts from Inch to Inch', () {
    final inch = Inch(1.0);
    final _in = inch.to(Inch);

    expect(_in.value, 1.0);
    expect(_in.type, Inch);
  });

  test('09 - The factory constructor converts from Feet to Inch', () {
    final ft = Feet(1.0);
    final _in = ft.to(Inch);

    expect(_in.value, 12.0);
    expect(_in.type, Inch);
  });

  test('10 - The factory constructor converts from Yard to Inch', () {
    final yd = Yard(1.0);
    final _in = yd.to(Inch);

    expect(_in.value, 36.0);
    expect(_in.type, Inch);
  });

  test('11 - The factory constructor converts from Mile to Inch', () {
    final mi = Mile(1.0);
    final _in = mi.to(Inch);

    expect(_in.value, 63360.0);
    expect(_in.type, Inch);
  });
}
