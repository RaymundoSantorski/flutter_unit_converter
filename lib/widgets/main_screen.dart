import 'package:flutter/material.dart';
import 'package:flutter_unit_converter/screens/length_screen.dart';
import 'package:flutter_unit_converter/screens/temperature_screen.dart';
import 'package:flutter_unit_converter/screens/weight_screen.dart';
import 'package:flutter_unit_converter/widgets/appbar_content.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: AppbarContent(
          title: widget.title,
          value: value,
          setValue: setValue,
        ),
        toolbarHeight: 100,
      ),
      body: value == 0
          ? LengthScreen()
          : value == 1
          ? WeightScreen()
          : TemperatureScreen(),
    );
  }
}
