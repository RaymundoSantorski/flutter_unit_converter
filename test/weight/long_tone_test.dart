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
  test('02 - The factory constructor converts from Milligram to LongTone', () {
    final mg = Milligram(1016046908.8);
    final lt = mg.to(LongTone);

    expect(lt.value, 1.0);
    expect(lt.type, LongTone);
  });

  test('03 - The factory constructor converts from Gram to LongTone', () {
    final g = Gram(1016046.9088);
    final lt = g.to(LongTone);

    expect(lt.value, 1.0);
    expect(lt.type, LongTone);
  });

  test('04 - The factory constructor converts from Kilogram to LongTone', () {
    final kg = Kilogram(1016.0469088);
    final lt = kg.to(LongTone);

    expect(lt.value, 1.0);
    expect(lt.type, LongTone);
  });

  test('05 - The factory constructor converts from MetricTone to LongTone', () {
    final t = MetricTone(1.016047);
    final lt = t.to(LongTone);

    expect(lt.value, 1.0);
    expect(lt.type, LongTone);
  });

  test('06 - The factory constructor converts from Ounce to LongTone', () {
    final oz = Ounce(35840.0);
    final lt = oz.to(LongTone);

    expect(lt.value, 1.0);
    expect(lt.type, LongTone);
  });

  test('07 - The factory constructor converts from Pound to LongTone', () {
    final lb = Pound(2240.0);
    final lt = lb.to(LongTone);

    expect(lt.value, 1.0);
    expect(lt.type, LongTone);
  });

  test('08 - The factory constructor converts from Stone to LongTone', () {
    final st = Stone(160.0);
    final lt = st.to(LongTone);

    expect(lt.value, 1.0);
    expect(lt.type, LongTone);
  });

  test('09 - The factory constructor converts from ShortTone to LongTone', () {
    final st = ShortTone(1.12);
    final lt = st.to(LongTone);

    expect(lt.value, 1.0);
    expect(lt.type, LongTone);
  });

  test('10 - The factory constructor converts from LongTone to LongTone', () {
    final longTone = LongTone(1.0);
    final lt = longTone.to(LongTone);

    expect(lt.value, 1.0);
    expect(lt.type, LongTone);
  });
}
