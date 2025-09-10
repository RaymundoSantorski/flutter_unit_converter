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
  test('02 - The factory constructor converts from Milligram to Stone', () {
    final mg = Milligram(6350293.18);
    final st = mg.to(Stone);

    expect(st.value, 1.0);
    expect(st.type, Stone);
  });

  test('03 - The factory constructor converts from Gram to Stone', () {
    final g = Gram(6350.29318);
    final st = g.to(Stone);

    expect(st.value, 1.0);
    expect(st.type, Stone);
  });

  test('04 - The factory constructor converts from Kilogram to Stone', () {
    final kg = Kilogram(6.35029318);
    final st = kg.to(Stone);

    expect(st.value, 1.0);
    expect(st.type, Stone);
  });

  test('05 - The factory constructor converts from MetricTone to Stone', () {
    final t = MetricTone(0.006350293);
    final st = t.to(Stone);

    expect(st.value, 1.0);
    expect(st.type, Stone);
  });

  test('06 - The factory constructor converts from Ounce to Stone', () {
    final oz = Ounce(224.0);
    final st = oz.to(Stone);

    expect(st.value, 1.0);
    expect(st.type, Stone);
  });

  test('07 - The factory constructor converts from Pound to Stone', () {
    final lb = Pound(14.0);
    final st = lb.to(Stone);

    expect(st.value, 1.0);
    expect(st.type, Stone);
  });

  test('08 - The factory constructor converts from Stone to Stone', () {
    final stone = Stone(1.0);
    final st = stone.to(Stone);

    expect(st.value, 1.0);
    expect(st.type, Stone);
  });

  test('09 - The factory constructor converts from ShortTone to Stone', () {
    final st = ShortTone(1.0);
    final stone = st.to(Stone);

    expect(stone.value, 142.85714);
    expect(stone.type, Stone);
  });

  test('10 - The factory constructor converts from LongTone to Stone', () {
    final lt = LongTone(1.0);
    final st = lt.to(Stone);

    expect(st.value, 160.0);
    expect(st.type, Stone);
  });
}
