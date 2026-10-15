import 'package:flutter/material.dart';

// VISTA: pantalla de bienvenida con un botón por ejercicio.
class BienvenidaPantalla extends StatelessWidget {
  const BienvenidaPantalla({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Bienvenida')),
    body: SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          const Text(
            'Grupo 2 - Prueba Práctica - Parcial 1 - Kenned Sigcha',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            '¡Bienvenidos a mi aplicación!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/invertir'),
            child: const Text('Ejercicio 8. Inversión de un número'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/suma'),
            child: const Text('Ejercicio 9. Suma de dígitos'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/divisores'),
            child: const Text('Ejercicio 7. Divisores de un número'),
          ),
        ],
      ),
    ),
  );
}
