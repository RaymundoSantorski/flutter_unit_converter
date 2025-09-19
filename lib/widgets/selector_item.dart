import 'package:flutter/material.dart';

List<DropdownMenuItem<int>> unitSelectorItems(int value) {
  return [
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
  ];
}
