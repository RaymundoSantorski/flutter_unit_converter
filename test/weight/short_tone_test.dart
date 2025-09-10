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
  test('02 - The factory constructor converts from Milligram to ShortTone', () {
    final mg = Milligram(907184740.0);
    final st = mg.to(ShortTone);

    expect(st.value, 1.0);
    expect(st.type, ShortTone);
  });

  test('03 - The factory constructor converts from Gram to ShortTone', () {
    final g = Gram(907184.74);
    final st = g.to(ShortTone);

    expect(st.value, 1.0);
    expect(st.type, ShortTone);
  });

  test('04 - The factory constructor converts from Kilogram to ShortTone', () {
    final kg = Kilogram(907.18474);
    final st = kg.to(ShortTone);

    expect(st.value, 1.0);
    expect(st.type, ShortTone);
  });

  test(
    '05 - The factory constructor converts from MetricTone to ShortTone',
    () {
      final t = MetricTone(0.907185);
      final st = t.to(ShortTone);

      expect(st.value, 1.0);
      expect(st.type, ShortTone);
    },
  );

  test('06 - The factory constructor converts from Ounce to ShortTone', () {
    final oz = Ounce(32000.0);
    final st = oz.to(ShortTone);

    expect(st.value, 1.0);
    expect(st.type, ShortTone);
  });

  test('07 - The factory constructor converts from Pound to ShortTone', () {
    final lb = Pound(2000.0);
    final st = lb.to(ShortTone);

    expect(st.value, 1.0);
    expect(st.type, ShortTone);
  });

  test('08 - The factory constructor converts from Stone to ShortTone', () {
    final st = Stone(142.85714);
    final shortTone = st.to(ShortTone);

    expect(shortTone.value, 1.0);
    expect(shortTone.type, ShortTone);
  });

  test('09 - The factory constructor converts from ShortTone to ShortTone', () {
    final shortTone = ShortTone(1.0);
    final st = shortTone.to(ShortTone);

    expect(st.value, 1.0);
    expect(st.type, ShortTone);
  });

  test('10 - The factory constructor converts from LongTone to ShortTone', () {
    final lt = LongTone(1.0);
    final st = lt.to(ShortTone);

    expect(st.value, 1.12);
    expect(st.type, ShortTone);
  });
}
