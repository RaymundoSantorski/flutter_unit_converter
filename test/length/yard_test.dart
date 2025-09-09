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

void main() {
  test('01 - The constructor asigns the correct value', () {
    final yd = Yard(15.0);
    expect(yd.value, 15.0);
    expect(yd.type, Yard);
  });

  test('02 - The factory constructor converts from Nanometer to Yard', () {
    final nm = Nanometer(914400000.0);
    final yd = nm.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });

  test('03 - The factory constructor converts from Micrometer to Yard', () {
    final mcm = Micrometer(914400.0);
    final yd = mcm.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });

  test('04 - The factory constructor converts from Millimeter to Yard', () {
    final mm = Millimeter(914.4);
    final yd = mm.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });

  test('05 - The factory constructor converts from Centimeter to Yard', () {
    final cm = Centimeter(91.44);
    final yd = cm.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });

  test('06 - The factory constructor converts from Meter to Yard', () {
    final m = Meter(0.9144);
    final yd = m.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });

  test('07 - The factory constructor converts from Kilometer to Yard', () {
    final km = Kilometer(0.0009144);
    final yd = km.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });

  test('08 - The factory constructor converts from Inch to Yard', () {
    final _in = Inch(36.0);
    final yd = _in.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });

  test('09 - The factory constructor converts from Foot to Yard', () {
    final ft = Feet(3.0);
    final yd = ft.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });

  test('10 - The factory constructor converts from Yard to Yard', () {
    final yard = Yard(1.0);
    final yd = yard.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });

  test('11 - The factory constructor converts from Mile to Yard', () {
    final mi = Mile(1 / 1760);
    final yd = mi.to(Yard);

    expect(yd.value, 1.0);
    expect(yd.type, Yard);
  });
}
