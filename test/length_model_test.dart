import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/centimeter.dart';
import 'package:flutter_unit_converter/models/inch.dart';
import 'package:flutter_unit_converter/models/kilometer.dart';
import 'package:flutter_unit_converter/models/length_model.dart';
import 'package:flutter_unit_converter/models/meter.dart';
import 'package:flutter_unit_converter/models/micrometer.dart';
import 'package:flutter_unit_converter/models/millimeter.dart';
import 'package:flutter_unit_converter/models/nanometer.dart';

/// Test of the Lenth class
void main() {
  test('Length asigns the type Nanometer and the correct value', () {
    final nm = Length.from(Nanometer, 5);
    expect(nm.value, 5);
    expect(nm.type, Nanometer);
  });
  test('Length asigns the type Micrometer and the correct value', () {
    final nm = Length.from(Micrometer, 10);
    expect(nm.value, 10);
    expect(nm.type, Micrometer);
  });
  test('Length asigns the type Millimeter and the correct value', () {
    final nm = Length.from(Millimeter, 15);
    expect(nm.value, 15);
    expect(nm.type, Millimeter);
  });
  test('Length asigns the type Centimeter and the correct value', () {
    final nm = Length.from(Centimeter, 20);
    expect(nm.value, 20);
    expect(nm.type, Centimeter);
  });
  test('Length asigns the type Inch and the correct value', () {
    final nm = Length.from(Inch, 25);
    expect(nm.value, 25);
    expect(nm.type, Inch);
  });
  test('Length asigns the type Meter and the correct value', () {
    final nm = Length.from(Meter, 30);
    expect(nm.value, 30);
    expect(nm.type, Meter);
  });
  test('Length asigns the type Kilometer and the correct value', () {
    final nm = Length.from(Kilometer, 35);
    expect(nm.value, 35);
    expect(nm.type, Kilometer);
  });
}
