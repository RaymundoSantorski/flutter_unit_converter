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

/// Test of the Centimeter class. Using the method 'to' because it tests itself from
/// the seed class and the factory constructor 'from' from the result class
/// For example, in the second test we convert from Nanometer to Centimeter
/// We declare a nanometer constant and use its method 'to', to convert it from nanometer
/// to centimeter. (nm.to(Centimeter)). Here we test the method to from the Nanometer class
/// and the factory constructo 'from' from the Centimeter class as it is used in the 'to method
/// of every length unit in this project.
void main() {
  test('01 - The constructor asigns the correct value', () {
    final cm = Centimeter(15.0);
    expect(cm.value, 15.0);
    expect(cm.type, Centimeter);
  });

  test(
    '02 - The factory constructor converts from Nanometer to Centimeter',
    () {
      final nm = Nanometer(10000000.0);
      final cm = nm.to(Centimeter);

      expect(cm.value, 1.0);
      expect(cm.type, Centimeter);
    },
  );

  test(
    '03 - The factory constructor converts from Micrometer to Centimeter',
    () {
      final mcm = Micrometer(10000.0);
      final cm = mcm.to(Centimeter);

      expect(cm.value, 1.0);
      expect(cm.type, Centimeter);
    },
  );

  test(
    '04 - The factory constructor converts from Millimeter to Centimeter',
    () {
      final mm = Millimeter(10.0);
      final cm = mm.to(Centimeter);

      expect(cm.value, 1.0);
      expect(cm.type, Centimeter);
    },
  );

  test(
    '05 - The factory constructor converts from Centimeter to Centimeter',
    () {
      final centimeter = Centimeter(1.0);
      final cm = centimeter.to(Centimeter);

      expect(cm.value, 1.0);
      expect(cm.type, Centimeter);
    },
  );

  test('06 - The factory constructor converts from Meter to Centimeter', () {
    final m = Meter(1.0);
    final cm = m.to(Centimeter);

    expect(cm.value, 100.0);
    expect(cm.type, Centimeter);
  });

  test(
    '07 - The factory constructor converts from Kilometer to Centimeter',
    () {
      final km = Kilometer(1.0);
      final cm = km.to(Centimeter);

      expect(cm.value, 100000.0);
      expect(cm.type, Centimeter);
    },
  );

  test('08 - The factory constructor converts from Inch to Centimeter', () {
    final _in = Inch(1.0);
    final cm = _in.to(Centimeter);

    expect(cm.value, 2.54);
    expect(cm.type, Centimeter);
  });

  test('09 - The factory constructor converts from Feet to Centimeter', () {
    final ft = Feet(1.0);
    final cm = ft.to(Centimeter);

    expect(cm.value, 30.48);
    expect(cm.type, Centimeter);
  });

  test('10 - The factory constructor converts from Yard to Centimeter', () {
    final yd = Yard(1.0);
    final cm = yd.to(Centimeter);

    expect(cm.value, 91.44);
    expect(cm.type, Centimeter);
  });

  test('11 - The factory constructor converts from Mile to Centimeter', () {
    final mi = Mile(1.0);
    final cm = mi.to(Centimeter);

    expect(cm.value, 160934.4);
    expect(cm.type, Centimeter);
  });
}
