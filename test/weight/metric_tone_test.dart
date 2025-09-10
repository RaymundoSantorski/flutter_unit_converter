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
  test(
    '02 - The factory constructor converts from Milligram to MetricTone',
    () {
      final mg = Milligram(1000000000.0);
      final t = mg.to(MetricTone);

      expect(t.value, 1.0);
      expect(t.type, MetricTone);
    },
  );

  test('03 - The factory constructor converts from Gram to MetricTone', () {
    final g = Gram(1000000.0);
    final t = g.to(MetricTone);

    expect(t.value, 1.0);
    expect(t.type, MetricTone);
  });

  test('04 - The factory constructor converts from Kilogram to MetricTone', () {
    final kg = Kilogram(1000.0);
    final t = kg.to(MetricTone);

    expect(t.value, 1.0);
    expect(t.type, MetricTone);
  });

  test(
    '05 - The factory constructor converts from MetricTone to MetricTone',
    () {
      final metricTone = MetricTone(1.0);
      final t = metricTone.to(MetricTone);

      expect(t.value, 1.0);
      expect(t.type, MetricTone);
    },
  );

  test('06 - The factory constructor converts from Ounce to MetricTone', () {
    final oz = Ounce(35273.96195);
    final t = oz.to(MetricTone);

    expect(t.value, 1.0);
    expect(t.type, MetricTone);
  });

  test('07 - The factory constructor converts from Pound to MetricTone', () {
    final lb = Pound(2204.62262);
    final t = lb.to(MetricTone);

    expect(t.value, 1.0);
    expect(t.type, MetricTone);
  });

  test('08 - The factory constructor converts from Stone to MetricTone', () {
    final st = Stone(157.47304);
    final t = st.to(MetricTone);

    expect(t.value, 1.0);
    expect(t.type, MetricTone);
  });

  test(
    '09 - The factory constructor converts from ShortTone to MetricTone',
    () {
      final st = ShortTone(1.10231);
      final t = st.to(MetricTone);

      expect(t.value, 1.0);
      expect(t.type, MetricTone);
    },
  );

  test('10 - The factory constructor converts from LongTone to MetricTone', () {
    final lt = LongTone(0.984207);
    final t = lt.to(MetricTone);

    expect(t.value, 1.0);
    expect(t.type, MetricTone);
  });
}
