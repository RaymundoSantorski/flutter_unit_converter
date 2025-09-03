import 'package:flutter/material.dart';
import 'package:flutter_unit_converter/models/length_model.dart';

class LengthScreen extends StatefulWidget {
  const LengthScreen({super.key});

  @override
  State<LengthScreen> createState() => _LengthScreenState();
}

class _LengthScreenState extends State<LengthScreen> {
  LengthModels fromUnit = LengthModels.mm;
  LengthModels toUnit = LengthModels.mm;

  void setFromUnit(LengthModels? value) {
    setState(() {
      fromUnit = value ?? LengthModels.mm;
    });
  }

  void setToUnit(LengthModels? value) {
    setState(() {
      toUnit = value ?? LengthModels.mm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton(
              value: fromUnit,
              items: [
                DropdownMenuItem(value: LengthModels.mm, child: Text('mm')),
                DropdownMenuItem(value: LengthModels.cm, child: Text('cm')),
                DropdownMenuItem(value: LengthModels.m, child: Text('m')),
              ],
              onChanged: setFromUnit,
            ),
            Icon(Icons.arrow_forward),
            DropdownButton(
              value: toUnit,
              items: [
                DropdownMenuItem(value: LengthModels.mm, child: Text('mm')),
                DropdownMenuItem(value: LengthModels.cm, child: Text('cm')),
                DropdownMenuItem(value: LengthModels.m, child: Text('m')),
              ],
              onChanged: setToUnit,
            ),
          ],
        ),
      ],
    );
  }
}
