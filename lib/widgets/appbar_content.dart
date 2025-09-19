import 'package:flutter/material.dart';
import 'package:flutter_unit_converter/widgets/selector_item.dart';

class AppbarContent extends StatelessWidget {
  const AppbarContent({
    super.key,
    required this.title,
    required this.value,
    required this.setValue,
  });
  final String title;
  final int value;
  final void Function(int?) setValue;

  final TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: textStyle),
        DropdownButton(
          style: TextStyle(color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(12)),
          dropdownColor: Color.fromRGBO(50, 50, 250, 0.9),
          value: value,
          iconDisabledColor: Colors.grey,
          items: unitSelectorItems(value),
          onChanged: setValue,
        ),
      ],
    );
  }
}
