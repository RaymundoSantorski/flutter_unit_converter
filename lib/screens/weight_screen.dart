import 'package:flutter/material.dart';
import 'package:flutter_unit_converter/models/weight/weight_model.dart';
import 'package:flutter_unit_converter/models/weight/milligram.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  Type fromType = Milligram;
  Type toType = Milligram;

  String formatNumber(double value) {
    if (value % 1 == 0) return '${value.toInt()}';
    return '$value';
  }

  Weight fromValue = Milligram(0);
  Weight toValue = Milligram(0);
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
        fromValue = Weight.from(
          fromType,
          double.tryParse(fromController.text) ?? 0,
        );
        toValue = fromValue.to(toType);
      });
    }

    Future<void> setToType(Type? type) async {
      setState(() {
        toType = type ?? Milligram;
      });
      setUnits();
    }

    Future<void> setFromType(Type? type) async {
      setState(() {
        fromType = type ?? Milligram;
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
                for (Weight unit in units)
                  DropdownMenuItem(value: unit.type, child: Text(unit.unit)),
              ],
              onChanged: setFromType,
            ),
            Icon(Icons.arrow_forward),
            DropdownButton<Type>(
              value: toType,
              items: [
                for (Weight unit in units)
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
