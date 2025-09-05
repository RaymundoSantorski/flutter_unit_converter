import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

void main() {
  /// Test of the Nanometer class, tests convertions from other Length types to Nanometer type
  group('Nanometer class', () {
    test('The constructor asigns the correct value', () {
      final nm = Nanometer(20.0);
      expect(nm.value, 20.0);
      expect(nm.type, Nanometer);
    });

    test('The factory constructor converts from Nanometer to Nanometer', () {
      final nn = Nanometer(1.0); // 1 nm
      final mm = Nanometer.from(nn); // Expects 1 nm

      expect(mm.value, 1.0);
      expect(mm.type, Nanometer);
    });
    test('The factory constructor converts from Micrometer to Nanometer', () {
      final mm = Micrometer(1.0); // 1 Mm
      final nm = Nanometer.from(mm); // Expects 1,000 nm

      expect(nm.value, 1000.0);
      expect(nm.type, Nanometer);
    });
    test('The factory constructor converts from Millimeter to Nanometer', () {
      final mm = Millimeter(0.1); // 0.1 mm
      final nm = Nanometer.from(mm); // Expects 100,000 nm

      expect(nm.value, 100000.0);
      expect(nm.type, Nanometer);
    });
    test('The factory constructor converts from Centimeter to Nanometer', () {
      final mm = Centimeter(0.01); // 1 cm
      final nm = Nanometer.from(mm); // Expects 100,000 nm

      expect(nm.value, 100000.0);
      expect(nm.type, Nanometer);
    });
    test('The factory constructor converts from Inch to Nanometer', () {
      final mm = Inch(0.0001); // 1 in
      final nm = Nanometer.from(mm); // Expects 2,540 nm

      expect(nm.value, 2540.0);
      expect(nm.type, Nanometer);
    });
    test('The factory constructor converts from Meter to Nanometer', () {
      final m = Meter(0.0001); // 1 m
      final nm = Nanometer.from(m); // Expects 100,000 nm

      expect(nm.value, 100000.0);
      expect(nm.type, Nanometer);
    });
    test('The factory constructor converts from Kilometer to Nanometer', () {
      final km = Kilometer(0.0001); // 1 km
      final nm = Nanometer.from(km); // Expects 100,000,000 nm

      expect(nm.value, 100000000.0);
      expect(nm.type, Nanometer);
    });
  });

  /// Test of the Millimeter class, tests convertions from other Length types to Micrometer type
  group('Micrometer class', () {
    test('The constructor asigns the correct value', () {
      final Mm = Micrometer(10.0);
      expect(Mm.value, 10.0);
      expect(Mm.type, Micrometer);
    });

    test('The factory constructor converts from Nanometer to Micrometer', () {
      final nm = Nanometer(1000); // 1,000nm
      final Mm = Micrometer.from(nm); // Expects 1Mm
      expect(Mm.value, 1.0);
      expect(Mm.type, Micrometer);
    });
    test('The factory constructor converts from Micrometer to Micrometer', () {
      final nm = Micrometer(1000); // 1,000nm
      final Mm = Micrometer.from(nm); // Expects 1,000Mm
      expect(Mm.value, 1000.0);
      expect(Mm.type, Micrometer);
    });
    test('The factory constructor converts from Millimeter to Micrometer', () {
      final mm = Millimeter(0.001); // 0.001mm
      final Mm = Micrometer.from(mm); // Expects 1Mm
      expect(Mm.value, 1.0);
      expect(Mm.type, Micrometer);
    });
    test('The factory constructor converts from Centimeter to Micrometer', () {
      final cm = Centimeter(0.001); // 0.001mm
      final Mm = Micrometer.from(cm); // Expects 10Mm
      expect(Mm.value, 10.0);
      expect(Mm.type, Micrometer);
    });
    test('The factory constructor converts from Inch to Micrometer', () {
      final cm = Inch(1); // 1 in
      final Mm = Micrometer.from(cm); // Expects 25400Mm
      expect(Mm.value, 25400.0);
      expect(Mm.type, Micrometer);
    });
    test('The factory constructor converts from Meter to Micrometer', () {
      final m = Meter(1); // 1m
      final Mm = Micrometer.from(m); // Expects 1,000,000Mm
      expect(Mm.value, 1000000);
      expect(Mm.type, Micrometer);
    });
    test('The factory constructor converts from Kilometer to Micrometer', () {
      final km = Kilometer(1); // 1m
      final Mm = Micrometer.from(km); // Expects 1,000,000,000Mm
      expect(Mm.value, 1000000000);
      expect(Mm.type, Micrometer);
    });
  });

  /// Test of the Millimeter class, tests convertions from other Length types to Millimeter type
  group('Millimeter class', () {
    test('The constructor asigns the correct value', () {
      final mm = Millimeter(15.0);
      expect(mm.value, 15.0);
      expect(mm.type, Millimeter);
    });

    test('The factory constructor converts from Nanometer to Millimeter', () {
      final nn = Nanometer(1000000.0); // 1,000,000 nn
      final mm = Millimeter.from(nn); // Expects 1 mm

      expect(mm.value, 1.0);
      expect(mm.type, Millimeter);
    });
    test('The factory constructor converts from Micrometer to Millimeter', () {
      final Mm = Micrometer(1000.0); // 1,000 Mm
      final mm = Millimeter.from(Mm); // Expects 1 mm

      expect(mm.value, 1.0);
      expect(mm.type, Millimeter);
    });
    test('The factory constructor converts from Millimeter to Millimeter', () {
      final mm1 = Millimeter(10.0); // 10 mm
      final mm2 = Millimeter.from(mm1); // Expects 10 mm

      expect(mm2.value, 10.0);
      expect(mm2.type, Millimeter);
    });

    test('The factory constructor converts from Centimeter to Millimeter', () {
      final cm = Centimeter(10.0); // 10 cm
      final mm = Millimeter.from(cm); // Expects 100 mm

      expect(mm.value, 100.0);
      expect(mm.type, Millimeter);
    });
    test('The factory constructor converts from Inch to Millimeter', () {
      final inch = Inch(10.0); // 10 in
      final mm = Millimeter.from(inch); // Expects 254 mm

      expect(mm.value, 254);
      expect(mm.type, Millimeter);
    });

    test('The factory constructor converts from Meter to Millimeter', () {
      final m = Meter(1.0); // 1m
      final mm = Millimeter.from(m); // Expects 1,000 mm

      expect(mm.value, 1000.0);
      expect(mm.type, Millimeter);
    });
    test('The factory constructor converts from Kilometer to Millimeter', () {
      final km = Kilometer(1.0); // 1km
      final mm = Millimeter.from(km); // Expects 1,000,000 mm

      expect(mm.value, 1000000.0);
      expect(mm.type, Millimeter);
    });
  }); // Millimeter class
}
