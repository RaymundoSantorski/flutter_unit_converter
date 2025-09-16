import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/volume/gallon.dart';
import 'package:flutter_unit_converter/models/volume/liquid_ounce.dart';
import 'package:flutter_unit_converter/models/volume/liter.dart';
import 'package:flutter_unit_converter/models/volume/milliliter.dart';

void main() {
  test('02 - The factory constructor converts from Milliliter to Gallon', () {
    final ml = Milliliter(3785.41);
    final gal = ml.to(Gallon);

    expect(gal.value, 1.0);
    expect(gal.type, Gallon);
  });

  test('03 - The factory constructor converts from Liter to Gallon', () {
    final l = Liter(3.78541);
    final gal = l.to(Gallon);

    expect(gal.value, 1.0);
    expect(gal.type, Gallon);
  });

  test('04 - The factory constructor converts from Gallon to Gallon', () {
    final gallon = Gallon(1.0);
    final gal = gallon.to(Gallon);

    expect(gal.value, 1.0);
    expect(gal.type, Gallon);
  });

  test('05 - The factory constructor converts from LiquidOunce to Gallon', () {
    final loz = LiquidOunce(128.0);
    final gal = loz.to(Gallon);

    expect(gal.value, 1.0);
    expect(gal.type, Gallon);
  });
}
