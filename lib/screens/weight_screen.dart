import 'package:flutter_unit_converter/models/convertion_screen.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';

class WeightScreen extends ConvertionScreen<Weight> {
  const WeightScreen({super.key});

  @override
  List<Weight> get units => weightUnits;

  @override
  Weight from(Type fromType, double value) => Weight.from(fromType, value);

  @override
  Weight initialValue() => const Milligram(0);
}
