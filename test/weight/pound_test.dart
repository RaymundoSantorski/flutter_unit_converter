import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/weight/gram.dart';
import 'package:flutter_unit_converter/models/weight/kilogram.dart';
import 'package:flutter_unit_converter/models/weight/long_tone.dart';
import 'package:flutter_unit_converter/models/weight/metric_tone.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/ounce.dart';
import 'package:flutter_unit_converter/models/weight/pound.dart';
import 'package:flutter_unit_converter/models/weight/short_tone.dart';
import 'package:flutter_unit_converter/models/weight/stone.dart';

void main() {
  test('02 - The factory constructor converts from Milligram to Pound', () {
    final mg = Milligram(453592.37);
    final lb = mg.to(Pound);

    expect(lb.value, 1.0);
    expect(lb.type, Pound);
  });

  test('03 - The factory constructor converts from Gram to Pound', () {
    final g = Gram(453.59237);
    final lb = g.to(Pound);

    expect(lb.value, 1.0);
    expect(lb.type, Pound);
  });

  test('04 - The factory constructor converts from Kilogram to Pound', () {
    final kg = Kilogram(0.45359237);
    final lb = kg.to(Pound);

    expect(lb.value, 1.0);
    expect(lb.type, Pound);
  });

  test('05 - The factory constructor converts from MetricTone to Pound', () {
    final t = MetricTone(0.000453592);
    final lb = t.to(Pound);

    expect(lb.value, 1.0);
    expect(lb.type, Pound);
  });

  test('06 - The factory constructor converts from Ounce to Pound', () {
    final oz = Ounce(16.0);
    final lb = oz.to(Pound);

    expect(lb.value, 1.0);
    expect(lb.type, Pound);
  });

  test('07 - The factory constructor converts from Pound to Pound', () {
    final pound = Pound(1.0);
    final lb = pound.to(Pound);

    expect(lb.value, 1.0);
    expect(lb.type, Pound);
  });

  test('08 - The factory constructor converts from Stone to Pound', () {
    final st = Stone(1.0);
    final lb = st.to(Pound);

    expect(lb.value, 14.0);
    expect(lb.type, Pound);
  });

  test('09 - The factory constructor converts from ShortTone to Pound', () {
    final st = ShortTone(1.0);
    final lb = st.to(Pound);

    expect(lb.value, 2000.0);
    expect(lb.type, Pound);
  });

  test('10 - The factory constructor converts from LongTone to Pound', () {
    final lt = LongTone(1.0);
    final lb = lt.to(Pound);

    expect(lb.value, 2240.0);
    expect(lb.type, Pound);
  });
}
