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

/// Test of the Nanometer unit
void main() {
  test('01 - The constructor asigns the correct value', () {
    final nm = Nanometer(20.0);
    expect(nm.value, 20.0);
    expect(nm.type, Nanometer);
  });

  test('02 - The factory constructor converts from Nanometer to Nanometer', () {
    final nanometer = Nanometer(1.0);
    final nm = nanometer.to(Nanometer);

    expect(nm.value, 1.0);
    expect(nm.type, Nanometer);
  });

  test(
    '03 - The factory constructor converts from Micrometer to Nanometer',
    () {
      final mcm = Micrometer(1.0);
      final nm = mcm.to(Nanometer);

      expect(nm.value, 1000.0);
      expect(nm.type, Nanometer);
    },
  );

  test(
    '04 - The factory constructor converts from Millimeter to Nanometer',
    () {
      final mm = Millimeter(1.0);
      final nm = mm.to(Nanometer);

      expect(nm.value, 1000000.0);
      expect(nm.type, Nanometer);
    },
  );

  test(
    '05 - The factory constructor converts from Centimeter to Nanometer',
    () {
      final cm = Centimeter(1.0);
      final nm = cm.to(Nanometer);

      expect(nm.value, 10000000.0);
      expect(nm.type, Nanometer);
    },
  );

  test('06 - The factory constructor converts from Meter to Nanometer', () {
    final m = Meter(1.0);
    final nm = m.to(Nanometer);

    expect(nm.value, 1000000000.0);
    expect(nm.type, Nanometer);
  });

  test('07 - The factory constructor converts from Kilometer to Nanometer', () {
    final km = Kilometer(1.0);
    final nm = km.to(Nanometer);

    expect(nm.value, 1000000000000.0);
    expect(nm.type, Nanometer);
  });

  test('08 - The factory constructor converts from Inch to Nanometer', () {
    final _in = Inch(1.0);
    final nm = _in.to(Nanometer);

    expect(nm.value, 25400000.0);
    expect(nm.type, Nanometer);
  });

  test('09 - The factory constructor converts from Feet to Nanometer', () {
    final ft = Feet(1.0);
    final nm = ft.to(Nanometer);

    expect(nm.value, 304800000.0);
    expect(nm.type, Nanometer);
  });

  test('10 - The factory constructor converts from Yard to Nanometer', () {
    final yd = Yard(1.0);
    final nm = yd.to(Nanometer);

    expect(nm.value, 914400000.0);
    expect(nm.type, Nanometer);
  });

  test('11 - The factory constructor converts from Mile to Nanometer', () {
    final mi = Mile(1.0);
    final nm = mi.to(Nanometer);

    expect(nm.value, 1609344000000.0);
    expect(nm.type, Nanometer);
  });
}
