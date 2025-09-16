import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/volume/gallon.dart';
import 'package:flutter_unit_converter/models/volume/liquid_ounce.dart';
import 'package:flutter_unit_converter/models/volume/liter.dart';
import 'package:flutter_unit_converter/models/volume/milliliter.dart';

void main() {
  test(
    '02 - The factory constructor converts from Milliliter to Milliliter',
    () {
      final milliliter = Milliliter(1.0);
      final ml = milliliter.to(Milliliter);

      expect(ml.value, 1.0);
      expect(ml.type, Milliliter);
    },
  );

  test('03 - The factory constructor converts from Liter to Milliliter', () {
    final l = Liter(1.0);
    final ml = l.to(Milliliter);

    expect(ml.value, 1000.0);
    expect(ml.type, Milliliter);
  });

  test('04 - The factory constructor converts from Gallon to Milliliter', () {
    final gal = Gallon(1.0);
    final ml = gal.to(Milliliter);

    expect(ml.value, 3785.41);
    expect(ml.type, Milliliter);
  });

  test(
    '05 - The factory constructor converts from LiquidOunce to Milliliter',
    () {
      final loz = LiquidOunce(1.0);
      final ml = loz.to(Milliliter);

      expect(ml.value, 29.5735);
      expect(ml.type, Milliliter);
    },
  );
}
