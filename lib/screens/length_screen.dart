import 'package:flutter/material.dart';
import 'package:flutter_unit_converter/models/length/length_model.dart';
import 'package:flutter_unit_converter/models/length/millimeter.dart';

class LengthScreen extends StatefulWidget {
  const LengthScreen({super.key});

  @override
  State<LengthScreen> createState() => _LengthScreenState();
}

class _LengthScreenState extends State<LengthScreen> {
  Type fromType = Millimeter;
  Type toType = Millimeter;

  String formatNumber(double value) {
    if (value % 1 == 0) return '${value.toInt()}';
    return '$value';
  }

  Length fromValue = Millimeter(0);
  Length toValue = Millimeter(0);
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
        fromValue = Length.from(
          fromType,
          double.tryParse(fromController.text) ?? 0,
        );
        toValue = fromValue.to(toType);
      });
    }

    Future<void> setToType(Type? type) async {
      setState(() {
        toType = type ?? Millimeter;
      });
      setUnits();
    }

    Future<void> setFromType(Type? type) async {
      setState(() {
        fromType = type ?? Millimeter;
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
                for (Length unit in units)
                  DropdownMenuItem(value: unit.type, child: Text(unit.unit)),
              ],
              onChanged: setFromType,
            ),
            Icon(Icons.arrow_forward),
            DropdownButton<Type>(
              value: toType,
              items: [
                for (Length unit in units)
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
