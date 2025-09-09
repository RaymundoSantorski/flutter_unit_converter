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

/// Test of the Micrometer unit
void main() {
  test('01 - The constructor asigns the correct value', () {
    final Mm = Micrometer(10.0);
    expect(Mm.value, 10.0);
    expect(Mm.type, Micrometer);
  });

  test(
    '02 - The factory constructor converts from Nanometer to Micrometer',
    () {
      final nm = Nanometer(1000.0);
      final mcm = nm.to(Micrometer);

      expect(mcm.value, 1.0);
      expect(mcm.type, Micrometer);
    },
  );

  test(
    '03 - The factory constructor converts from Micrometer to Micrometer',
    () {
      final micrometer = Micrometer(1.0);
      final mcm = micrometer.to(Micrometer);

      expect(mcm.value, 1.0);
      expect(mcm.type, Micrometer);
    },
  );

  test(
    '04 - The factory constructor converts from Millimeter to Micrometer',
    () {
      final mm = Millimeter(1.0);
      final mcm = mm.to(Micrometer);

      expect(mcm.value, 1000.0);
      expect(mcm.type, Micrometer);
    },
  );

  test(
    '05 - The factory constructor converts from Centimeter to Micrometer',
    () {
      final cm = Centimeter(1.0);
      final mcm = cm.to(Micrometer);

      expect(mcm.value, 10000.0);
      expect(mcm.type, Micrometer);
    },
  );

  test('06 - The factory constructor converts from Meter to Micrometer', () {
    final m = Meter(1.0);
    final mcm = m.to(Micrometer);

    expect(mcm.value, 1000000.0);
    expect(mcm.type, Micrometer);
  });

  test(
    '07 - The factory constructor converts from Kilometer to Micrometer',
    () {
      final km = Kilometer(1.0);
      final mcm = km.to(Micrometer);

      expect(mcm.value, 1000000000.0);
      expect(mcm.type, Micrometer);
    },
  );

  test('08 - The factory constructor converts from Inch to Micrometer', () {
    final _in = Inch(1.0);
    final mcm = _in.to(Micrometer);

    expect(mcm.value, 25400.0);
    expect(mcm.type, Micrometer);
  });

  test('09 - The factory constructor converts from Feet to Micrometer', () {
    final ft = Feet(1.0);
    final mcm = ft.to(Micrometer);

    expect(mcm.value, 304800.0);
    expect(mcm.type, Micrometer);
  });

  test('10 - The factory constructor converts from Yard to Micrometer', () {
    final yd = Yard(1.0);
    final mcm = yd.to(Micrometer);

    expect(mcm.value, 914400.0);
    expect(mcm.type, Micrometer);
  });

  test('11 - The factory constructor converts from Mile to Micrometer', () {
    final mi = Mile(1.0);
    final mcm = mi.to(Micrometer);

    expect(mcm.value, 1609344000.0);
    expect(mcm.type, Micrometer);
  });
}
