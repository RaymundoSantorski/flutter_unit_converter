import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int value = 0;

  void setValue(int? val) {
    setState(() {
      value = val ?? 0;
    });
  }

  TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Column(
          children: [
            Text(widget.title, style: textStyle),
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
              ],
              onChanged: setValue,
            ),
          ],
        ),
        toolbarHeight: 100,
      ),
    );
  }
}
