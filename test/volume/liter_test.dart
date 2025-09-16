import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/volume/gallon.dart';
import 'package:flutter_unit_converter/models/volume/liquid_ounce.dart';
import 'package:flutter_unit_converter/models/volume/liter.dart';
import 'package:flutter_unit_converter/models/volume/milliliter.dart';

void main() {
  test('02 - The factory constructor converts from Milliliter to Liter', () {
    final ml = Milliliter(1000.0);
    final l = ml.to(Liter);

    expect(l.value, 1.0);
    expect(l.type, Liter);
  });

  test('03 - The factory constructor converts from Liter to Liter', () {
    final liter = Liter(1.0);
    final l = liter.to(Liter);

    expect(l.value, 1.0);
    expect(l.type, Liter);
  });

  test('04 - The factory constructor converts from Gallon to Liter', () {
    final gal = Gallon(1.0);
    final l = gal.to(Liter);

    expect(l.value, 3.78541);
    expect(l.type, Liter);
  });

  test('05 - The factory constructor converts from LiquidOunce to Liter', () {
    final loz = LiquidOunce(1.0);
    final l = loz.to(Liter);

    expect(l.value, 0.0295735);
    expect(l.type, Liter);
  });
}
