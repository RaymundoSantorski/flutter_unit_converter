import 'package:flutter_unit_converter/models/convertion_screen.dart';
import 'package:flutter_unit_converter/models/temperature/celsius.dart';
import 'package:flutter_unit_converter/models/temperature/temperature.dart';

class TemperatureScreen extends ConvertionScreen<Temperature> {
  const TemperatureScreen({super.key});

  @override
  List<Temperature> get units => temperatureUnits;

  @override
  Temperature from(Type fromType, double value) =>
      Temperature.from(fromType, value);

  @override
  Temperature initialValue() => const Celsius(0);
}
