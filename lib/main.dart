import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Unit converter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: Column(
          children: [
            Text(widget.title),
            DropdownButton(
              value: value,
              items: [
                DropdownMenuItem(value: 0, child: Text('Longitud')),
                DropdownMenuItem(value: 1, child: Text('Peso')),
                DropdownMenuItem(value: 2, child: Text('Temperatura')),
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
