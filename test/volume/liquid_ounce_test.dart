import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_converter/models/volume/gallon.dart';
import 'package:flutter_unit_converter/models/volume/liquid_ounce.dart';
import 'package:flutter_unit_converter/models/volume/liter.dart';
import 'package:flutter_unit_converter/models/volume/milliliter.dart';

void main() {
  test(
    '02 - The factory constructor converts from Milliliter to LiquidOunce',
    () {
      final ml = Milliliter(29.5735);
      final loz = ml.to(LiquidOunce);

      expect(loz.value, 1.0);
      expect(loz.type, LiquidOunce);
    },
  );

  test('03 - The factory constructor converts from Liter to LiquidOunce', () {
    final l = Liter(0.0295735);
    final loz = l.to(LiquidOunce);

    expect(loz.value, 1.0);
    expect(loz.type, LiquidOunce);
  });

  test('04 - The factory constructor converts from Gallon to LiquidOunce', () {
    final gal = Gallon(1.0);
    final loz = gal.to(LiquidOunce);

    expect(loz.value, 128.0);
    expect(loz.type, LiquidOunce);
  });

  test(
    '05 - The factory constructor converts from LiquidOunce to LiquidOunce',
    () {
      final liquidOunce = LiquidOunce(1.0);
      final loz = liquidOunce.to(LiquidOunce);

      expect(loz.value, 1.0);
      expect(loz.type, LiquidOunce);
    },
  );
}
