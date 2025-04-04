import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cambio de Color',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CambioColorScreen(),
    );
  }
}

class CambioColorScreen extends StatefulWidget {
  const CambioColorScreen({super.key});

  @override
  CambioColorScreenState createState() => CambioColorScreenState();
}

class CambioColorScreenState extends State<CambioColorScreen> {
  Color _containerColor = Colors.white; // Color inicial del Container
  final List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
  ]; // Lista de colores
  int _currentColorIndex = 0;

  void _changeColor() {
    setState(() {
      _containerColor = _colors[_currentColorIndex];
      _currentColorIndex = (_currentColorIndex + 1) % _colors.length;
    });
  }

  void _restartColor() {
    setState(() {
      _currentColorIndex = 1; // Reinicia el índice del color
      _containerColor = Colors.white; // Cambia el color a blanco
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cambio de Color')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _changeColor, // Cambia el color al tocar el Container
              child: Container(
                // Modificación 1: Cambia el tamaño del Container
                width: 300,
                height: 300,
                color: _containerColor,
                alignment: Alignment.center,
                child: const Text(
                  '¡Cambió de color!', // Modificación 3: Cambia el texto dentro del Container
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeColor, // Cambia el color al presionar el botón
              child: const Text('Cambiar Color'),
            ),
            // Modificación 2: Reinicia el color a blanco
            ElevatedButton(
              onPressed: _restartColor,
              child: const Text(
                'Reiniciar Color',
              ), // Reinicia el color al presionar el botón
            ),
          ],
        ),
      ),
    );
  }
}
