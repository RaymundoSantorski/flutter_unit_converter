import 'package:flutter/material.dart';
import 'package:flutter_unit_converter/widgets/appbar_content.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: AppbarContent(title: title),
        toolbarHeight: 100,
      ),
    );
  }
}
