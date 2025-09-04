import 'package:flutter/material.dart';
import 'package:flutter_unit_converter/models/length_model.dart';

class LengthScreen extends StatefulWidget {
  const LengthScreen({super.key});

  @override
  State<LengthScreen> createState() => _LengthScreenState();
}

class _LengthScreenState extends State<LengthScreen> {
  Type fromType = Millimeter;
  Type toType = Millimeter;

  @override
  Widget build(BuildContext context) {
    TextEditingController fromController = TextEditingController(text: '');
    TextEditingController toController = TextEditingController(text: '');

    void setFromType(Type? type) {
      setState(() {
        fromType = type ?? Millimeter;
      });
    }

    void setToType(Type? type) {
      setState(() {
        toType = type ?? Millimeter;
      });
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton<Type>(
              value: fromType,
              items: [
                DropdownMenuItem(value: Millimeter, child: Text('mm')),
                DropdownMenuItem(value: Centimeter, child: Text('cm')),
                DropdownMenuItem(value: Meter, child: Text('m')),
              ],
              onChanged: setFromType,
            ),
            Icon(Icons.arrow_forward),
            DropdownButton<Type>(
              value: toType,
              items: [
                DropdownMenuItem(value: Millimeter, child: Text('mm')),
                DropdownMenuItem(value: Centimeter, child: Text('cm')),
                DropdownMenuItem(value: Meter, child: Text('m')),
              ],
              onChanged: setToType,
            ),
          ],
        ),
        Card(
          child: TextField(
            keyboardType: TextInputType.number,
            controller: fromController,
          ),
        ),
        Card(child: TextField(controller: toController, enabled: false)),
      ],
    );
  }
}
