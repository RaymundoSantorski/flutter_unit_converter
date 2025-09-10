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

main() {
  test('02 - The factory constructor converts from Milligram to Milligram', () {
    final milligram = Milligram(1.0);
    final mg = milligram.to(Milligram);

    expect(mg.value, 1.0);
    expect(mg.type, Milligram);
  });

  test('03 - The factory constructor converts from Gram to Milligram', () {
    final g = Gram(1.0);
    final mg = g.to(Milligram);

    expect(mg.value, 1000.0);
    expect(mg.type, Milligram);
  });

  test('04 - The factory constructor converts from Kilogram to Milligram', () {
    final kg = Kilogram(1.0);
    final mg = kg.to(Milligram);

    expect(mg.value, 1000000.0);
    expect(mg.type, Milligram);
  });

  test(
    '05 - The factory constructor converts from MetricTone to Milligram',
    () {
      final t = MetricTone(1.0);
      final mg = t.to(Milligram);

      expect(mg.value, 1000000000.0);
      expect(mg.type, Milligram);
    },
  );

  test('06 - The factory constructor converts from Ounce to Milligram', () {
    final oz = Ounce(1.0);
    final mg = oz.to(Milligram);

    expect(mg.value, 28349.5231);
    expect(mg.type, Milligram);
  });

  test('07 - The factory constructor converts from Pound to Milligram', () {
    final lb = Pound(1.0);
    final mg = lb.to(Milligram);

    expect(mg.value, 453592.37);
    expect(mg.type, Milligram);
  });

  test('08 - The factory constructor converts from Stone to Milligram', () {
    final st = Stone(1.0);
    final mg = st.to(Milligram);

    expect(mg.value, 6350293.18);
    expect(mg.type, Milligram);
  });

  test('09 - The factory constructor converts from ShortTone to Milligram', () {
    final st = ShortTone(1.0);
    final mg = st.to(Milligram);

    expect(mg.value, 907184740.0);
    expect(mg.type, Milligram);
  });

  test('10 - The factory constructor converts from LongTone to Milligram', () {
    final lt = LongTone(1.0);
    final mg = lt.to(Milligram);

    expect(mg.value, 1016046908.8);
    expect(mg.type, Milligram);
  });
}
