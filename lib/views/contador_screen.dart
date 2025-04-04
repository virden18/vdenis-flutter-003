import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({super.key});

  @override
  ContadorScreenState createState() => ContadorScreenState();
}

class ContadorScreenState extends State<ContadorScreen> {
  int _counter = 0;

  void _incrementCounter() {
    /*
    Usamos setState para notificar a Flutter que el estado del widget 
    ha cambiado y que debe reconstruir la interfaz.
  
    Sin setState, los cambios en el estado no se reflejarán en la 
    pantalla, lo que puede causar una experiencia de usuario inconsistente.
    */
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi App')),
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
              padding: EdgeInsets.all(20), // Agrega un padding de 20
              color: Colors.green, // Cambia el color de fondo
              child: const Text(
                'Hola, Flutter',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Veces presionado: $_counter', // Modificación 1: Cambia el texto del contador
              style: TextStyle( 
                fontSize: 20,
                // Modificación 3: Cambia el color del texto
                color: Colors.blue), 
            ),
            const SizedBox(height: 30), // Modificación 2: Cambia el tamaño del espacio entre el texto y el botón
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text(
                'Toca aquí',
              ), // Cambia el texto del botón
            ),
          ],
        ),
      ),
    );
  }
}
