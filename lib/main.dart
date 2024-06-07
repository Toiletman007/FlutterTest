import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Flutter is Fun!"),
        ),
        body: Container(
          child: const Text("Helloooo"),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}