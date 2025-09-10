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
  test('02 - The factory constructor converts from Milligram to Kilogram', () {
    final mg = Milligram(1000000.0);
    final kg = mg.to(Kilogram);

    expect(kg.value, 1.0);
    expect(kg.type, Kilogram);
  });

  test('03 - The factory constructor converts from Gram to Kilogram', () {
    final g = Gram(1000.0);
    final kg = g.to(Kilogram);

    expect(kg.value, 1.0);
    expect(kg.type, Kilogram);
  });

  test('04 - The factory constructor converts from Kilogram to Kilogram', () {
    final kilogram = Kilogram(1.0);
    final kg = kilogram.to(Kilogram);

    expect(kg.value, 1.0);
    expect(kg.type, Kilogram);
  });

  test('05 - The factory constructor converts from MetricTone to Kilogram', () {
    final t = MetricTone(1.0);
    final kg = t.to(Kilogram);

    expect(kg.value, 1000.0);
    expect(kg.type, Kilogram);
  });

  test('06 - The factory constructor converts from Ounce to Kilogram', () {
    final oz = Ounce(1.0);
    final kg = oz.to(Kilogram);

    expect(kg.value, 0.0283495);
    expect(kg.type, Kilogram);
  });

  test('07 - The factory constructor converts from Pound to Kilogram', () {
    final lb = Pound(1.0);
    final kg = lb.to(Kilogram);

    expect(kg.value, 0.453592);
    expect(kg.type, Kilogram);
  });

  test('08 - The factory constructor converts from Stone to Kilogram', () {
    final st = Stone(1.0);
    final kg = st.to(Kilogram);

    expect(kg.value, 6.35029);
    expect(kg.type, Kilogram);
  });

  test('09 - The factory constructor converts from ShortTone to Kilogram', () {
    final st = ShortTone(1.0);
    final kg = st.to(Kilogram);

    expect(kg.value, 907.18474);
    expect(kg.type, Kilogram);
  });

  test('10 - The factory constructor converts from LongTone to Kilogram', () {
    final lt = LongTone(1.0);
    final kg = lt.to(Kilogram);

    expect(kg.value, 1016.0469);
    expect(kg.type, Kilogram);
  });
}
