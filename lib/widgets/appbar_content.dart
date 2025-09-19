import 'package:flutter/material.dart';

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
          items: [
            DropdownMenuItem(
              key: Key('ddi_0'),
              value: 0,
              enabled: value != 0,
              child: Text('Longitud'),
            ),
            DropdownMenuItem(
              key: Key('ddi_1'),
              value: 1,
              enabled: value != 1,
              child: Text('Peso'),
            ),
            DropdownMenuItem(
              key: Key('ddi_2'),
              value: 2,
              enabled: value != 2,
              child: Text('Temperatura'),
            ),
            DropdownMenuItem(
              key: Key('ddi_3'),
              value: 3,
              enabled: value != 3,
              child: Text('Volumen'),
            ),
          ],
          onChanged: setValue,
        ),
      ],
    );
  }
}
