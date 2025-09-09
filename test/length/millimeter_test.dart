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

/// Test of the Millimeter unit
void main() {
  test('01 - The constructor asigns the correct value', () {
    final mm = Millimeter(15.0);
    expect(mm.value, 15.0);
    expect(mm.type, Millimeter);
  });

  test(
    '02 - The factory constructor converts from Nanometer to Millimeter',
    () {
      final nm = Nanometer(1000000.0);
      final mm = nm.to(Millimeter);

      expect(mm.value, 1.0);
      expect(mm.type, Millimeter);
    },
  );

  test(
    '03 - The factory constructor converts from Micrometer to Millimeter',
    () {
      final mcm = Micrometer(1000.0);
      final mm = mcm.to(Millimeter);

      expect(mm.value, 1.0);
      expect(mm.type, Millimeter);
    },
  );

  test(
    '04 - The factory constructor converts from Millimeter to Millimeter',
    () {
      final millimeter = Millimeter(1.0);
      final mm = millimeter.to(Millimeter);

      expect(mm.value, 1.0);
      expect(mm.type, Millimeter);
    },
  );

  test(
    '05 - The factory constructor converts from Centimeter to Millimeter',
    () {
      final cm = Centimeter(1.0);
      final mm = cm.to(Millimeter);

      expect(mm.value, 10.0);
      expect(mm.type, Millimeter);
    },
  );

  test('06 - The factory constructor converts from Meter to Millimeter', () {
    final m = Meter(1.0);
    final mm = m.to(Millimeter);

    expect(mm.value, 1000.0);
    expect(mm.type, Millimeter);
  });

  test(
    '07 - The factory constructor converts from Kilometer to Millimeter',
    () {
      final km = Kilometer(1.0);
      final mm = km.to(Millimeter);

      expect(mm.value, 1000000.0);
      expect(mm.type, Millimeter);
    },
  );

  test('08 - The factory constructor converts from Inch to Millimeter', () {
    final _in = Inch(1.0);
    final mm = _in.to(Millimeter);

    expect(mm.value, 25.4);
    expect(mm.type, Millimeter);
  });

  test('09 - The factory constructor converts from Feet to Millimeter', () {
    final ft = Feet(1.0);
    final mm = ft.to(Millimeter);

    expect(mm.value, 304.8);
    expect(mm.type, Millimeter);
  });

  test('10 - The factory constructor converts from Yard to Millimeter', () {
    final yd = Yard(1.0);
    final mm = yd.to(Millimeter);

    expect(mm.value, 914.4);
    expect(mm.type, Millimeter);
  });

  test('11 - The factory constructor converts from Mile to Millimeter', () {
    final mi = Mile(1.0);
    final mm = mi.to(Millimeter);

    expect(mm.value, 1609344.0);
    expect(mm.type, Millimeter);
  });
}
