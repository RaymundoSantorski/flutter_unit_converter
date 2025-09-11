import 'package:flutter/material.dart';
import 'package:flutter_unit_converter/models/temperature/kelvin.dart';
import 'package:flutter_unit_converter/models/temperature/temperature.dart';

class TemperatureScreen extends StatefulWidget {
  const TemperatureScreen({super.key});

  @override
  State<TemperatureScreen> createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  Type fromType = Kelvin;
  Type toType = Kelvin;

  String formatNumber(double value) {
    if (value % 1 == 0) return '${value.toInt()}';
    return '$value';
  }

  Temperature fromValue = Kelvin(0);
  Temperature toValue = Kelvin(0);
  late final TextEditingController fromController = TextEditingController(
    text: formatNumber(fromValue.value),
  );

  @override
  void initState() {
    fromController.selection = TextSelection.fromPosition(
      TextPosition(offset: fromController.text.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController toController = TextEditingController(
      text: formatNumber(toValue.value),
    );

    Future<void> setUnits() async {
      setState(() {
        fromValue = Temperature.from(
          fromType,
          double.tryParse(fromController.text) ?? 0,
        );
        toValue = fromValue.to(toType);
      });
    }

    Future<void> setToType(Type? type) async {
      setState(() {
        toType = type ?? Kelvin;
      });
      setUnits();
    }

    Future<void> setFromType(Type? type) async {
      setState(() {
        fromType = type ?? Kelvin;
      });
      setUnits();
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton<Type>(
              value: fromType,
              items: [
                for (Temperature unit in units)
                  DropdownMenuItem(value: unit.type, child: Text(unit.unit)),
              ],
              onChanged: setFromType,
            ),
            Icon(Icons.arrow_forward),
            DropdownButton<Type>(
              value: toType,
              items: [
                for (Temperature unit in units)
                  DropdownMenuItem(value: unit.type, child: Text(unit.unit)),
              ],
              onChanged: setToType,
            ),
          ],
        ),
        Card(
          child: TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            autofocus: true,
            onChanged: (value) => setUnits(),
            controller: fromController,
          ),
        ),
        Card(
          child: TextField(
            textAlign: TextAlign.center,
            controller: toController,
            enabled: false,
          ),
        ),
      ],
    );
  }
}
