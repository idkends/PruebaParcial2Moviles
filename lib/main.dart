import 'package:flutter/material.dart';
import 'controllers/ejercicios_controller.dart';
import 'views/bienvenida_pantalla.dart';
import 'views/ejercicio_pantalla.dart';

void main() => runApp(const PruebaPracticaApp());

class PruebaPracticaApp extends StatelessWidget {
  const PruebaPracticaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controlador = EjerciciosController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prueba Práctica - Parcial 1',
      theme: ThemeData(colorSchemeSeed: Colors.teal),
      initialRoute: '/',
      routes: {
        '/': (_) => const BienvenidaPantalla(),
        '/invertir': (_) => EjercicioPantalla(
          titulo: '8. Inversión de un número',
          instrucciones:
              'Ingresa un número entero positivo para invertir sus dígitos.',
          calcular: controlador.invertir,
        ),
        '/suma': (_) => EjercicioPantalla(
          titulo: '9. Suma de dígitos',
          instrucciones:
              'Ingresa un número entero positivo para sumar sus dígitos.',
          calcular: controlador.sumaDigitos,
        ),
        '/divisores': (_) => EjercicioPantalla(
          titulo: '7. Divisores de un número',
          instrucciones:
              'Ingresa un número entero positivo para ver sus divisores.',
          calcular: controlador.divisores,
        ),
      },
    );
  }
}
