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
  test('02 - The factory constructor converts from Milligram to Ounce', () {
    final mg = Milligram(28349.5231);
    final oz = mg.to(Ounce);

    expect(oz.value, 1.0);
    expect(oz.type, Ounce);
  });

  test('03 - The factory constructor converts from Gram to Ounce', () {
    final g = Gram(28.3495231);
    final oz = g.to(Ounce);

    expect(oz.value, 1.0);
    expect(oz.type, Ounce);
  });

  test('04 - The factory constructor converts from Kilogram to Ounce', () {
    final kg = Kilogram(0.0283495231);
    final oz = kg.to(Ounce);

    expect(oz.value, 1.0);
    expect(oz.type, Ounce);
  });

  test('05 - The factory constructor converts from MetricTone to Ounce', () {
    final t = MetricTone(0.0000283495231);
    final oz = t.to(Ounce);

    expect(oz.value, 1.0);
    expect(oz.type, Ounce);
  });

  test('06 - The factory constructor converts from Ounce to Ounce', () {
    final ounce = Ounce(1.0);
    final oz = ounce.to(Ounce);

    expect(oz.value, 1.0);
    expect(oz.type, Ounce);
  });

  test('07 - The factory constructor converts from Pound to Ounce', () {
    final lb = Pound(1.0);
    final oz = lb.to(Ounce);

    expect(oz.value, 16.0);
    expect(oz.type, Ounce);
  });

  test('08 - The factory constructor converts from Stone to Ounce', () {
    final st = Stone(1.0);
    final oz = st.to(Ounce);

    expect(oz.value, 224.0);
    expect(oz.type, Ounce);
  });

  test('09 - The factory constructor converts from ShortTone to Ounce', () {
    final st = ShortTone(1.0);
    final oz = st.to(Ounce);

    expect(oz.value, 32000.0);
    expect(oz.type, Ounce);
  });

  test('10 - The factory constructor converts from LongTone to Ounce', () {
    final lt = LongTone(1.0);
    final oz = lt.to(Ounce);

    expect(oz.value, 35840.0);
    expect(oz.type, Ounce);
  });
}
