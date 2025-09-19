import 'package:flutter/material.dart';
import 'package:flutter_unit_converter/models/unit.dart';

abstract class ConvertionScreen<T extends Unit<T>> extends StatefulWidget {
  const ConvertionScreen({super.key});

  List<T> get units;
  T from(Type fromType, double value);
  T initialValue();

  @override
  State<ConvertionScreen<T>> createState() => _ConversionScreenState<T>();
}

class _ConversionScreenState<T extends Unit<T>>
    extends State<ConvertionScreen<T>> {
  late final TextEditingController fromController;
  late final TextEditingController toController;

  late Type fromType;
  late Type toType;
  late T fromValue;
  late T toValue;

  @override
  void initState() {
    super.initState();
    fromValue = widget.initialValue();
    toValue = fromValue;
    fromType = fromValue.type;
    toType = toValue.type;

    fromController = TextEditingController(text: fromValue.value.toString());
    toController = TextEditingController(text: toValue.value.toString());

    fromController.addListener(_updateValues);
    fromController.selection = TextSelection.fromPosition(
      TextPosition(offset: fromController.text.length),
    );
  }

  @override
  void dispose() {
    fromController.dispose();
    toController.dispose();
    super.dispose();
  }

  void _updateValues() {
    if (fromController.text.isEmpty) {
      return;
    }
    setState(() {
      fromValue = widget.from(
        fromType,
        double.tryParse(fromController.text) ?? 0,
      );
      toValue = fromValue.to(toType);
      toController.text = toValue.value.toString();
    });
  }

  void _setFromType(Type? type) {
    if (type == null) return;
    setState(() {
      fromType = type;
      _updateValues();
    });
  }

  void _setToType(Type? type) {
    if (type == null) return;
    setState(() {
      toType = type;
      _updateValues();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DropdownButton<Type>(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                dropdownColor: Color.fromRGBO(250, 250, 250, 0.8),
                value: fromType,
                items: [
                  for (T unit in widget.units)
                    DropdownMenuItem(value: unit.type, child: Text(unit.unit)),
                ],
                onChanged: _setFromType,
              ),
              const Icon(Icons.arrow_forward),
              DropdownButton<Type>(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                dropdownColor: Color.fromRGBO(250, 250, 250, 0.8),
                value: toType,
                items: [
                  for (T unit in widget.units)
                    DropdownMenuItem(value: unit.type, child: Text(unit.unit)),
                ],
                onChanged: _setToType,
              ),
            ],
          ),
          Card(
            margin: EdgeInsetsGeometry.only(top: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              autofocus: true,
              controller: fromController,
            ),
          ),
          Card(
            margin: EdgeInsetsGeometry.only(top: 20),
            child: TextField(
              readOnly: true,
              textAlign: TextAlign.center,
              controller: toController,
            ),
          ),
        ],
      ),
    );
  }
}
