import 'package:flutter_unit_converter/models/convertion_screen.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';

class LengthScreen extends ConvertionScreen<Length> {
  const LengthScreen({super.key});

  @override
  List<Length> get units => lengthUnits;

  @override
  Length from(Type fromType, double value) => Length.from(fromType, value);

  @override
  Length initialValue() => const Millimeter(0);
}
