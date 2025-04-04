import 'package:flutter/material.dart';
import 'package:vdenis_flutter_003/views/mi_pantalla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MiPantalla(),
    );
  }
}
