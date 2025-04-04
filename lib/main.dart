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
      title: 'Mi App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MiPantalla(),
    );
  }
}

class MiPantalla extends StatelessWidget {
  const MiPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi App'),
      ),
      body: Center(
        // Column organiza los widgets en una columna vertical
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            Containter
            El containter envuelve al texto con un fondo, separando las partes del widget
            haciendo que todos los cambios del container se apliquen solo dentro de él.
            Puede almacenar otros widgets dentro de él.
            */
            Container(
              padding: EdgeInsets.all(20), // Modificación 2: Agrega un padding de 20
              color: Colors.green, // Modificación 1: Cambia el color de fondo
              child: const Text(
                'Hola, Flutter',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Toca aquí'), // Modificación 3: Cambia el texto del botón
            ),
          ],
        ),
      ),
    );
  }
}
