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
  test('02 - The factory constructor converts from Milligram to Gram', () {
    final mg = Milligram(1000.0);
    final g = mg.to(Gram);

    expect(g.value, 1.0);
    expect(g.type, Gram);
  });

  test('03 - The factory constructor converts from Gram to Gram', () {
    final gram = Gram(1.0);
    final g = gram.to(Gram);

    expect(g.value, 1.0);
    expect(g.type, Gram);
  });

  test('04 - The factory constructor converts from Kilogram to Gram', () {
    final kg = Kilogram(1.0);
    final g = kg.to(Gram);

    expect(g.value, 1000.0);
    expect(g.type, Gram);
  });

  test('05 - The factory constructor converts from MetricTone to Gram', () {
    final t = MetricTone(1.0);
    final g = t.to(Gram);

    expect(g.value, 1000000.0);
    expect(g.type, Gram);
  });

  test('06 - The factory constructor converts from Ounce to Gram', () {
    final oz = Ounce(1.0);
    final g = oz.to(Gram);

    expect(g.value, 28.3495231);
    expect(g.type, Gram);
  });

  test('07 - The factory constructor converts from Pound to Gram', () {
    final lb = Pound(1.0);
    final g = lb.to(Gram);

    expect(g.value, 453.59237);
    expect(g.type, Gram);
  });

  test('08 - The factory constructor converts from Stone to Gram', () {
    final st = Stone(1.0);
    final g = st.to(Gram);

    expect(g.value, 6350.29318);
    expect(g.type, Gram);
  });

  test('09 - The factory constructor converts from ShortTone to Gram', () {
    final st = ShortTone(1.0);
    final g = st.to(Gram);

    expect(g.value, 907184.74);
    expect(g.type, Gram);
  });

  test('10 - The factory constructor converts from LongTone to Gram', () {
    final lt = LongTone(1.0);
    final g = lt.to(Gram);

    expect(g.value, 1016046.9088);
    expect(g.type, Gram);
  });
}
